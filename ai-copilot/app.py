import streamlit as st
from agents.orchestrator import route_request

REPO_PATH = "../"

st.set_page_config(
    page_title="Arshad Terraform Copilot",
    layout="wide"
)

st.title("🚀 Arshad Azure Terraform AI Copilot")

question = st.text_input(
    "Ask a question"
)

if st.button("Run"):

    with st.spinner("Analyzing Terraform..."):

        result = route_request(
            question,
            REPO_PATH
        )

        st.markdown(result)