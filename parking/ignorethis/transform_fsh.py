# python transform_fsh.py input_folder output_folder
#Python Script: goFSH FSH modifed for needed parts

import os
import sys
import re
from pathlib import Path

# ------------------------------------------------------------
# Helpers
# ------------------------------------------------------------

def title_from_id(id_str):
    return id_str.replace("-", " ")

def description_for_resource(resource_type, fsh_text):
    if resource_type == "Task":
        m = re.search(r'\* code\.coding\[0\] = ([^\s]+)#([^\s]+) "([^"]+)"', fsh_text)
        if m:
            return f"Example Task id {m.group(3)}"

    if resource_type == "Organization":
        m = re.search(r'\* name = "([^"]+)"', fsh_text)
        if m:
            return f"Example Organization id {m.group(1)}"

    if resource_type == "DocumentReference":
        m = re.search(r'\* type\.coding\[0\] = ([^\s]+)#([^\s]+) "([^"]+)"', fsh_text)
        if m:
            return f"Example DocumentReference id {m.group(3)}"

    return f"Example {resource_type}"

def extract_resource_type(fsh_text):
    m = re.search(r'InstanceOf:\s+(\S+)', fsh_text)
    return m.group(1) if m else None

def extract_id(fsh_text):
    m = re.search(r'Instance:\s+(\S+)', fsh_text)
    return m.group(1) if m else None

# ------------------------------------------------------------
# Transformations
# ------------------------------------------------------------

def remove_documentreference_title(fsh_text):
    return re.sub(r'\* title = ".*"\n?', "", fsh_text)

def convert_masteridentifier(fsh_text):
    """
    Replace:
        * masterIdentifier.system = "..."
        * masterIdentifier.value = "..."
    with:
        * identifier[0].system = "..."
        * identifier[0].value = "..."
    """
    if "masterIdentifier" not in fsh_text:
        return fsh_text

    # Extract system/value
    sys_m = re.search(r'\* masterIdentifier\.system = "([^"]+)"', fsh_text)
    val_m = re.search(r'\* masterIdentifier\.value = "([^"]+)"', fsh_text)

    system = sys_m.group(1) if sys_m else None
    value = val_m.group(1) if val_m else None

    # Remove masterIdentifier lines
    fsh_text = re.sub(r'\* masterIdentifier\.[^\n]+\n?', "", fsh_text)

    # Insert identifier[0]
    if system:
        fsh_text += f'\n* identifier[0].system = "{system}"\n'
    if value:
        fsh_text += f'* identifier[0].value = "{value}"\n'

    return fsh_text
    
def rewrite_references(text, contained_ids):
    for cid in contained_ids:
        text = text.replace(f"Reference(#{cid})", f"Reference({cid})")
    return text
    
def extract_contained_resources(fsh_text):
    """
    Extract contained resources from goFSH output.
    Returns:
      parent_text (str) with contained removed
      list_of_resources (list of dicts with id, type, block)
    """

    lines = fsh_text.splitlines()
    parent_lines = []
    contained = {}

    for line in lines:
        m = re.match(r'\* contained\[(\d+)\]\.(.+?) = (.+)', line)
        if m:
            idx = int(m.group(1))
            path = m.group(2)
            value = m.group(3).strip()

            if idx not in contained:
                contained[idx] = {}

            contained[idx][path] = value
        else:
            parent_lines.append(line)

    resources = []
    for idx, fields in contained.items():
        rtype = fields.get("resourceType")
        rid = fields.get("id")

        if not rtype or not rid:
            continue

        # Build FSH block
        body_lines = []
        for path, value in fields.items():
            if path in ("resourceType", "id"):
                continue
            body_lines.append(f"* {path} = {value}")

        block = (
            f"Instance: {rid}\n"
            f"InstanceOf: {rtype}\n"
            f"Usage: #example\n"   # <-- THIS IS THE KEY CHANGE
            + "\n".join(body_lines)
        )

        resources.append({"id": rid, "type": rtype, "block": block})

    return "\n".join(parent_lines), resources
    
# ------------------------------------------------------------
# Main transformation
# ------------------------------------------------------------

def transform_fsh_file(path, outdir):
    text = Path(path).read_text()

    # Extract contained resources
    parent_text, contained_resources = extract_contained_resources(text)
    
    rid = extract_id(parent_text)
    rtype = extract_resource_type(parent_text)

    parent_text = remove_documentreference_title(parent_text)
    parent_text = convert_masteridentifier(parent_text)

    title = title_from_id(rid)
    desc = description_for_resource(rtype, parent_text)

    parent_text = re.sub(
        r'(InstanceOf:\s+\S+)',
        r'\1\nTitle: "' + title + '"\nDescription: "' + desc + '"',
        parent_text
    )

    contained_ids = [res["id"] for res in contained_resources]
    parent_text = rewrite_references(parent_text, contained_ids)
    
    # Write parent
    (Path(outdir) / f"{rid}.fsh").write_text(parent_text)

    # Append extracted contained resources to the same file
    with open(Path(outdir) / f"{rid}.fsh", "a") as f:
        for res in contained_resources:
            block = res["block"]

            # Add Title + Description
            title = title_from_id(res["id"])
            desc = description_for_resource(res["type"], block)

            block = re.sub(
                r'(InstanceOf:\s+\S+)',
                r'\1\nTitle: "' + title + '"\nDescription: "' + desc + '"',
                block
            )

            f.write("\n\n" + block)
           
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