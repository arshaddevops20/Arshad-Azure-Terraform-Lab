import os

def analyze_workflows(repo_path):

    workflow_path = os.path.join(
        repo_path,
        ".github",
        "workflows"
    )

    result = []

    if os.path.exists(workflow_path):

        for file in os.listdir(workflow_path):

            if file.endswith(".yml"):
                result.append(file)

    return "\n".join(result)