import streamlit as st

from agents.orchestrator import run_agent

REPO_PATH = r"D:\DevOps Batch 18\Arshad-Azure-Terraform-Lab"

st.set_page_config(
    page_title="Arshad AI Copilot",
    layout="wide"
)

st.title("🚀 Arshad Azure Terraform AI Copilot")

question = st.text_input(
    "Ask your DevOps Agent"
)

if st.button("Run"):

    with st.spinner("Analyzing..."):

        result = run_agent(
            question,
            REPO_PATH
        )

        st.code(result)