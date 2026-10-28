import sys
import re
from pathlib import Path

# ------------------------------------------------------------
# Helpers
# ------------------------------------------------------------

def title_from_id(id_str):
    return id_str.replace("-", " ")

def description_for_resource(resource_type, fsh_text):
    # Task: * code = system#code "display"
    if resource_type == "Task":
        m = re.search(r'\* code\s*=\s*([^\s]+)#([^\s]+)\s+"([^"]+)"', fsh_text)
        if m:
            return f"Example Task {m.group(3)}"

    # Organization: * name = "..."
    if resource_type == "Organization":
        m = re.search(r'\* name\s*=\s*"([^"]+)"', fsh_text)
        if m:
            return f"Example Organization {m.group(1)}"

    # DocumentReference: * type = system#code "display"
    if resource_type == "DocumentReference":
        m = re.search(r'\* type\s*=\s*([^\s]+)#([^\s]+)\s+"([^"]+)"', fsh_text)
        if m:
            return f"Example DocumentReference {m.group(3)}"

    return f"Example {resource_type}"

def extract_resource_type(block):
    m = re.search(r'InstanceOf:\s+(\S+)', block)
    return m.group(1) if m else None

def extract_id(block):
    m = re.search(r'Instance:\s+(\S+)', block)
    return m.group(1) if m else None

def convert_organization_contact_structure(block, resource_type):
    if resource_type != "Organization":
        return block

    new_lines = []
    telecom_index_map = {}  # maps old telecom index → new telecom index
    next_telecom_index = 0

    for line in block.splitlines():
        stripped = line.strip()

        # telecom[n].foo → contact[0].telecom[n].foo
        m = re.match(r'\* telecom\[(\d+)\]\.(.+)', stripped)
        if m:
            old_index = int(m.group(1))
            path = m.group(2)

            # preserve original telecom index
            if old_index not in telecom_index_map:
                telecom_index_map[old_index] = next_telecom_index
                next_telecom_index += 1

            new_index = telecom_index_map[old_index]
            new_lines.append(f"* contact[0].telecom[{new_index}].{path}")
            continue

        # address.foo → contact[0].address.foo
        m = re.match(r'\* address\.(.+)', stripped)
        if m:
            path = m.group(1)
            new_lines.append(f"* contact[0].address.{path}")
            continue

        # otherwise keep line unchanged
        new_lines.append(line)

    return "\n".join(new_lines)
    

# ------------------------------------------------------------
# Transformations
# ------------------------------------------------------------

def remove_documentreference_title(block, resource_type):
    if resource_type == "DocumentReference":
        block = re.sub(r'\* title\s*=\s*".*"\n?', "", block)
    return block

def convert_masteridentifier(block, resource_type):
    if resource_type != "DocumentReference":
        return block

    if "masterIdentifier" not in block:
        return block

    sys_m = re.search(r'\* masterIdentifier\.system\s*=\s*"([^"]+)"', block)
    val_m = re.search(r'\* masterIdentifier\.value\s*=\s*"([^"]+)"', block)

    system = sys_m.group(1) if sys_m else None
    value = val_m.group(1) if val_m else None

    block = re.sub(r'\* masterIdentifier\.[^\n]+\n?', "", block)

    if system:
        block += f'* identifier[0].system = "{system}"\n'
    if value:
        block += f'* identifier[0].value = "{value}"\n'

    return block

def rewrite_references(block, inline_ids):
    for cid in inline_ids:
        block = block.replace(f"Reference(#{cid})", f"Reference({cid})")
    return block

def remove_contained_lines(block):
    return re.sub(r'^\* contained\[[^\]]+\]\s*=\s*.+\n?', "", block, flags=re.MULTILINE)

def upgrade_inline_usage(block):
    return re.sub(r'Usage:\s*#inline', 'Usage: #example', block)

def add_title_and_description(block):
    rid = extract_id(block)
    rtype = extract_resource_type(block)
    if not rid or not rtype:
        return block

    title = title_from_id(rid)
    desc = description_for_resource(rtype, block)

    # If Title/Description already present, replace; otherwise insert after InstanceOf
    if "Title:" in block or "Description:" in block:
        block = re.sub(r'Title:.*\n?', "", block)
        block = re.sub(r'Description:.*\n?', "", block)

    block = re.sub(
        r'(InstanceOf:\s+\S+)',
        r'\1\nTitle: "' + title + '"\nDescription: "' + desc + '"',
        block,
        count=1
    )

    return block

def align_instance_name_with_id(block):
    rid = extract_id(block)
    m = re.search(r'\* id\s*=\s*"([^"]+)"', block)
    if not m:
        return block, rid  # no change

    internal_id = m.group(1)

    # Replace Instance: <whatever> with Instance: <internal_id>
    block = re.sub(r'Instance:\s+\S+', f"Instance: {internal_id}", block, count=1)

    return block, internal_id

# ------------------------------------------------------------
# Main per-file transform
# ------------------------------------------------------------

def transform_fsh_file(path, outdir):
    text = Path(path).read_text()

    # Split into Instance blocks
    raw_blocks = re.split(r'(?m)^Instance:\s+', text)
    if not raw_blocks or raw_blocks[0].strip() == "":
        raw_blocks = raw_blocks[1:]
        prefix = "Instance: "
    else:
        prefix = ""

    blocks = [prefix + b for b in raw_blocks if b.strip()]
    if not blocks:
        return

    parent_block = blocks[0]
    inline_blocks = blocks[1:]

    # Collect inline IDs for reference rewriting
    inline_ids = [extract_id(b) for b in inline_blocks if extract_id(b)]

    # ---- Parent block transforms ----
    parent_type = extract_resource_type(parent_block)

    parent_block = remove_contained_lines(parent_block)
    parent_block = rewrite_references(parent_block, inline_ids)
    parent_block = remove_documentreference_title(parent_block, parent_type)
    parent_block = convert_masteridentifier(parent_block, parent_type)
    parent_block = convert_organization_contact_structure(parent_block, parent_type)
    parent_block = add_title_and_description(parent_block)

    # ---- Inline block transforms ----
    transformed_inline = []
    for b in inline_blocks:
        rtype = extract_resource_type(b)
        b = upgrade_inline_usage(b)
        b = remove_documentreference_title(b, rtype)
        b = convert_masteridentifier(b, rtype)
        b = convert_organization_contact_structure(b, rtype)
        b = add_title_and_description(b)
        transformed_inline.append(b)

    # ---- Write output ----
    rid = extract_id(parent_block) or Path(path).stem
    out_path = Path(outdir) / f"{rid}.fsh"

    with open(out_path, "w", encoding="utf-8") as f:
        f.write(parent_block.strip())
        for b in transformed_inline:
            f.write("\n\n" + b.strip() + "\n")

    print(f"Processed {path}")


# ------------------------------------------------------------
# CLI
# ------------------------------------------------------------

def main():
    if len(sys.argv) != 3:
        print("Usage: python transform_fsh.py <gofsh-output-folder> <final-fsh-folder>")
        sys.exit(1)

    infolder = Path(sys.argv[1])
    outfolder = Path(sys.argv[2])
    outfolder.mkdir(parents=True, exist_ok=True)

    for f in infolder.glob("*.fsh"):
        transform_fsh_file(f, outfolder)

if __name__ == "__main__":
    main()
