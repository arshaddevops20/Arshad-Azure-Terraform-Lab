import subprocess

def run_checkov(repo_path):

    try:

        result = subprocess.run(
            [
                "checkov",
                "-d",
                repo_path
            ],
            capture_output=True,
            text=True
        )

        return result.stdout

    except Exception as ex:

        return str(ex)