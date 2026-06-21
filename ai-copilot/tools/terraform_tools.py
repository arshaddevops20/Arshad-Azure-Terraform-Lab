import os

def get_terraform_content(repo_path: str):

    terraform_content = ""

    for root, dirs, files in os.walk(repo_path):

        if ".terraform" in root:
            continue

        if "ai-copilot" in root:
            continue

        for file in files:

            if file.endswith(".tf"):

                path = os.path.join(root, file)

                try:

                    with open(path, "r", encoding="utf-8") as f:

                        terraform_content += f"\n\n### FILE: {path}\n"
                        terraform_content += f.read()

                except Exception as ex:

                    terraform_content += f"\nERROR: {ex}"

    return terraform_content