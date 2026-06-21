from langchain_ollama import ChatOllama
from tools.terraform_tools import read_terraform

llm = ChatOllama(
    model="qwen3:4b"
)

def review_terraform(repo_path):

    terraform_code = read_terraform(repo_path)

    prompt = f"""
You are a Senior Azure Terraform Architect.

Analyze the following Terraform code.

Provide:

1. Architecture Summary
2. Security Findings
3. Best Practice Findings
4. Recommendations

Terraform Code:

{terraform_code}
"""

    response = llm.invoke(prompt)

    return response.content