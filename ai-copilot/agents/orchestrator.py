from agents.terraform_agent import review_terraform

def route_request(question, repo_path):

    question = question.lower()

    if "terraform" in question:
        return review_terraform(repo_path)

    if "review" in question:
        return review_terraform(repo_path)

    return "Unknown request"