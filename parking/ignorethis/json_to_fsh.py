# python json_to_fsh.py input_folder output_folder
#Python Script: JSON → FSH (with contained resources extracted)

import os
import sys
import json
import re

def title_from_id(id_str):
    return id_str.replace("-", " ")

def description_for_resource(res):
    rtype = res.get("resourceType")

    if rtype == "Task":
        display = (
            res.get("code", {})
              .get("coding", [{}])[0]
              .get("display", "")
        )
        return f"Example Task id {display}".strip()

    if rtype == "Organization":
        name = res.get("name", "")
        return f"Example Organization id {name}".strip()

    if rtype == "DocumentReference":
        display = (
            res.get("type", {})
              .get("coding", [{}])[0]
              .get("display", "")
        )
        return f"Example DocumentReference id {display}".strip()

    # fallback
    return f"Example {rtype} id {res.get('id','')}".strip()

def normalize_documentreference(res):
    """Convert masterIdentifier → identifier[] and remove title."""
    if res.get("resourceType") != "DocumentReference":
        return res

    # 1. Convert masterIdentifier → identifier[]
    if "masterIdentifier" in res:
        mi = res["masterIdentifier"]
        # If identifier already exists, append; otherwise create
        if "identifier" not in res:
            res["identifier"] = []
        res["identifier"].append(mi)
        del res["masterIdentifier"]

    # 2. Remove DocumentReference.title
    if "title" in res:
        del res["title"]

    return res

def emit_fsh(path, value, out_lines):
    """Emit a single FSH assignment line."""
    # Convert enums like status = "current" → #current
    if isinstance(value, str) and value.isalpha():
        out_lines.append(f"* {path} = #{value}")
    else:
        out_lines.append(f"* {path} = {json.dumps(value)}")

def emit_coding(path, coding_obj, out_lines, is_first):
    system = coding_obj["system"]
    code = coding_obj["code"]
    display = coding_obj.get("display")

    index_token = "0" if is_first else "+"

    if display:
        out_lines.append(
            f'* {path}[{index_token}] = {system}#{code} "{display}"'
        )
    else:
        out_lines.append(
            f'* {path}[{index_token}] = {system}#{code}'
        )

def is_coding_triple(obj):
    """Return True if obj has system + code (display optional)."""
    return (
        isinstance(obj, dict)
        and "system" in obj
        and "code" in obj
    )
    
def walk(path, obj, out_lines):
    """Recursively walk JSON and emit FSH paths."""
    # Case 1: coding array with system/code/display objects
    if isinstance(obj, list) and all(is_coding_triple(x) for x in obj):
        for i, coding in enumerate(obj):
            emit_coding(path, coding, out_lines, is_first=(i == 0))
        return

    # Case 2: normal dict
    if isinstance(obj, dict):
        for key, val in obj.items():
            new_path = f"{path}.{key}" if path else key
            walk(new_path, val, out_lines)
        return

    # Case 3: normal list
    if isinstance(obj, list):
        for i, val in enumerate(obj):
            new_path = f"{path}[{i}]"
            walk(new_path, val, out_lines)
        return

    # Case 4: primitive
    emit_fsh(path, obj, out_lines)

def fsh_for_resource(res):
    """Generate FSH for a single resource (already extracted)."""
    # Apply DocumentReference-specific cleanup
    res = normalize_documentreference(res)
    
    rid = res["id"]
    rtype = res["resourceType"]

    title = title_from_id(rid)
    desc = description_for_resource(res)

    lines = []
    lines.append(f"Instance: {rid}")
    lines.append(f"InstanceOf: {rtype}")
    lines.append(f'Title: "{title}"')
    lines.append(f'Description: "{desc}"')
    lines.append("Usage: #example")
    lines.append("")

    # Copy resource and remove resourceType/id
    body = {k: v for k, v in res.items() if k not in ["resourceType", "id"]}

    walk("", body, lines)

    return "\n".join(lines)

    # # Dump all fields except resourceType and id
    # for key, value in res.items():
        # if key in ["resourceType", "id"]:
            # continue
        # fsh_path = f"* {key} = {json.dumps(value)}"
        # lines.append(fsh_path)

    # return "\n".join(lines)


def extract_contained(main_res):
    """Return list of contained resources and remove them from main."""
    contained = main_res.get("contained", [])
    # Remove contained from main
    if "contained" in main_res:
        del main_res["contained"]
    return contained


def process_file(path, outdir):
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)

    basename = os.path.splitext(os.path.basename(path))[0]
    out_path = os.path.join(outdir, basename + ".fsh")

    # Extract contained resources
    contained = extract_contained(data)

    # Generate FSH for main resource
    fsh_blocks = [fsh_for_resource(data)]

    # Generate FSH for each contained resource
    for c in contained:
        fsh_blocks.append(fsh_for_resource(c))

    # Write output
    with open(out_path, "w", encoding="utf-8") as f:
        f.write("\n\n".join(fsh_blocks))

    print(f"Generated {out_path}")


def main():
    if len(sys.argv) != 3:
        print("Usage: python json_to_fsh.py <input_folder> <output_folder>")
        sys.exit(1)

    infolder = sys.argv[1]
    outfolder = sys.argv[2]

    os.makedirs(outfolder, exist_ok=True)

    for fname in os.listdir(infolder):
        if fname.lower().endswith(".json"):
            process_file(os.path.join(infolder, fname), outfolder)


if __name__ == "__main__":
    main()