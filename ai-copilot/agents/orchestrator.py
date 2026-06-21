from agents.terraform_agent import review_terraform
from agents.github_agent import analyze_workflows
from agents.security_agent import run_checkov

def run_agent(question, repo_path):

    question = question.lower()

    if "terraform" in question:
        return review_terraform(repo_path)

    if "architecture" in question:
        return review_terraform(repo_path)

    if "workflow" in question:
        return analyze_workflows(repo_path)

    if "security" in question:
        return run_checkov(repo_path)

    return """
Supported Commands

Review Terraform
Explain Architecture
Analyze Workflows
Run Security Scan
"""