import os

def get_tf_files(repo_path):
    tf_files = []

    for root, _, files in os.walk(repo_path):
        for file in files:
            if file.endswith(".tf"):
                tf_files.append(os.path.join(root, file))

    return tf_files


def read_terraform(repo_path):
    content = ""

    for file in get_tf_files(repo_path):
        try:
            with open(file, "r", encoding="utf-8") as f:
                content += f"\n\n### FILE: {file}\n"
                content += f.read()
        except Exception as e:
            content += f"\nError reading {file}: {str(e)}"

    return content