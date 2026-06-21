from langchain_ollama import ChatOllama

from tools.terraform_tools import get_terraform_content

llm = ChatOllama(
    model="qwen3:4b",
    temperature=0
)

def review_terraform(repo_path):

    terraform_code = get_terraform_content(repo_path)

    prompt = f"""
You are a Senior Azure Terraform Architect.

Analyze this repository.

Provide:

1. Architecture Summary

2. Azure Resources

3. Security Review

4. Terraform Best Practices

5. Cost Optimization Suggestions

6. Improvement Recommendations

Repository:

{terraform_code}
"""

    result = llm.invoke(prompt)

    return result.content