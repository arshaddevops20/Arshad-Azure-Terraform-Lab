# 🚀 Arshad Azure Terraform Lab

![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform)
![Azure](https://img.shields.io/badge/Microsoft_Azure-Cloud-0078D4?logo=microsoftazure)
![Azure DevOps](https://img.shields.io/badge/Azure_DevOps-CI%2FCD-0078D7?logo=azuredevops)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-Automation-2088FF?logo=githubactions)
![Terraform Security](https://img.shields.io/badge/Security-Checkov%20%7C%20Trivy-success)
![AI Copilot](https://img.shields.io/badge/AI-Terraform_Copilot-orange)

A production-style Infrastructure as Code (IaC) project built with **Terraform** and **Microsoft Azure** that demonstrates modular infrastructure provisioning, secure authentication using **OIDC**, automated CI/CD with **Azure DevOps** and **GitHub Actions**, infrastructure security scanning, and an AI-powered Terraform Copilot.

---

# 📖 Project Overview

This project provisions Azure infrastructure using reusable Terraform modules and follows Infrastructure as Code (IaC) best practices.

The repository showcases a modern DevOps workflow by integrating:

* Modular Terraform Architecture
* Azure Remote Backend
* Azure DevOps CI/CD Pipelines
* GitHub Actions Automation
* OpenID Connect (OIDC) Authentication
* Infrastructure Security Scanning
* AI-powered Terraform Copilot

The project is intended for DevOps engineers, cloud engineers, and anyone learning enterprise Terraform deployments on Microsoft Azure.

---

# ✨ Features

## Infrastructure

* Modular Terraform Architecture
* Azure Resource Group
* Production & Development Virtual Networks
* Multiple Subnets
* Network Security Groups (NSGs)
* Azure Linux Virtual Machines
* Azure Load Balancer
* Azure Bastion Host
* VNet Peering
* NAT Gateway (if enabled)
* Public & Private Networking

---

## Infrastructure as Code

* Terraform Modules
* Variables & Outputs
* Remote Backend (Azure Storage)
* Version Constraints
* Reusable Components
* Environment-based Configuration

---

## CI/CD

* Azure DevOps Pipelines
* GitHub Actions
* Terraform Validation
* Terraform Planning
* Pull Request Validation
* Automated Infrastructure Deployment
* Automated Infrastructure Destroy Pipeline

---

## Security

* Azure OIDC Authentication
* Checkov Security Validation
* Trivy Vulnerability Scanning
* SSH Key Authentication
* NSG Security Rules
* Private VM Architecture

---

## AI Terraform Copilot

* Streamlit UI
* Ollama Integration
* LangChain
* Local LLM Support
* Terraform Review
* Architecture Review
* Workflow Analysis
* Security Recommendations

---

# 🏗️ Architecture

```text
                         Internet
                             │
                             ▼
                  Azure Load Balancer
                             │
                ┌────────────┴────────────┐
                │                         │
                ▼                         ▼
        Frontend VM (Nginx)       Azure Bastion
                │                         │
                └────────────┬────────────┘
                             │
                   VNet Production
                     10.0.0.0/16
                             │
         ┌───────────────────┴───────────────────┐
         │                                       │
         ▼                                       ▼
Frontend Subnet                         AzureBastionSubnet
10.0.1.0/24                              10.0.2.0/24

               ⇅ Bidirectional VNet Peering

                    VNet Development
                      10.1.0.0/16
                             │
                             ▼
                    Backend Subnet
                      10.1.1.0/24
                             │
                             ▼
                       Backend VM
```

---

# 📂 Repository Structure

```text
Arshad-Azure-Terraform-Lab/
│
├── .github/
│   └── workflows/
│
├── ai-copilot/
│   ├── agents/
│   ├── memory/
│   ├── tools/
│   ├── app.py
│   ├── requirements.txt
│   ├── Dockerfile
│   └── README.md
│
├── modules/
│   ├── network/
│   ├── vm/
│   ├── bastion/
│   └── loadbalancer/
│
├── pipelines/
│
├── backend.tf
├── versions.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars.example
├── main.tf
├── outputs.tf
│
├── azure-pipelines.yml
├── azure-destroy-pipelines.yml
├── terraform-pr-validation.yml
│
├── README.md
└── .gitignore
```

---

# ☁️ Azure Resources

The project deploys:

* Azure Resource Group
* Azure Virtual Networks
* Azure Subnets
* Network Security Groups
* Azure Linux Virtual Machines
* Azure Bastion Host
* Azure Load Balancer
* Public IP Addresses
* NAT Gateway (optional)
* VNet Peering

---

# 🔄 CI/CD Pipelines

## Azure DevOps

| Pipeline         | Description                        |
| ---------------- | ---------------------------------- |
| Azure Pipeline   | Validate, Plan and Apply Terraform |
| Destroy Pipeline | Destroy Infrastructure             |
| PR Validation    | Validate Pull Requests             |

---

## GitHub Actions

| Workflow           | Description                      |
| ------------------ | -------------------------------- |
| Terraform Init     | Initialize Terraform             |
| Terraform Validate | Validate Terraform Configuration |
| Terraform Plan     | Generate Terraform Plan          |
| Azure Login        | Test OIDC Authentication         |
| Checkov            | Terraform Security Validation    |
| Trivy              | Vulnerability & Secret Scanning  |

---

## CI/CD Benefits

* Automated Validation
* Infrastructure Consistency
* Secure Deployments
* Pull Request Validation
* Shift-Left Security
* Repeatable Infrastructure
* Reduced Manual Errors

---

# 🔐 Azure OIDC Authentication

The project authenticates GitHub Actions and Azure DevOps to Azure using **OpenID Connect (OIDC)**.

Required GitHub Secrets:

```text
AZURE_CLIENT_ID
AZURE_TENANT_ID
AZURE_SUBSCRIPTION_ID
```

## Benefits

* No Client Secret
* Short-lived Tokens
* Secure Authentication
* Enterprise Best Practice
* Microsoft Recommended

---

# 💾 Terraform Remote Backend

Terraform state is stored remotely in an Azure Storage Account.

Benefits include:

* Shared State
* Team Collaboration
* State Locking
* Secure Storage
* Disaster Recovery
* Centralized State Management

---

# 🤖 AI Terraform Copilot

The repository contains an AI assistant capable of reviewing Terraform code locally using Ollama.

## Technologies

* Streamlit
* Ollama
* LangChain
* Python
* GitPython
* Checkov

## Capabilities

* Terraform Code Review
* Architecture Analysis
* Security Review
* Workflow Analysis
* Infrastructure Best Practices
* Repository Insights

---

# 🛠️ Technology Stack

## Cloud

* Microsoft Azure
* Azure Virtual Networks
* Azure Virtual Machines
* Azure Bastion
* Azure Load Balancer
* Azure Storage

---

## Infrastructure as Code

* Terraform
* Terraform Modules
* Remote State Backend

---

## DevOps

* Azure DevOps
* GitHub Actions
* Azure CLI
* Git

---

## Security

* Checkov
* Trivy
* OIDC Authentication

---

## AI

* Streamlit
* Ollama
* LangChain
* Python

---

## Web Server

* Nginx

---

# 📋 Prerequisites

Install:

* Terraform
* Azure CLI
* Git

Verify installation:

```bash
terraform version
az version
git --version
```

---

# 🔑 Azure Authentication

Login:

```bash
az login
```

Select Subscription:

```bash
az account set --subscription <subscription-id>
```

Verify:

```bash
az account show
```

---

# ⚙️ Terraform Configuration

Create a file named:

```text
terraform.tfvars
```

Example:

```hcl
location       = "East US"
admin_username = "azureuser"
vm_size        = "Standard_D2s_v7"
```

---

# 🚀 Deployment

## Initialize

```bash
terraform init
```

## Validate

```bash
terraform validate
```

## Format

```bash
terraform fmt -recursive
```

## Plan

```bash
terraform plan
```

## Apply

```bash
terraform apply -auto-approve
```

---

# 🌐 Verify Resources

List resources:

```bash
az resource list -g arshad-rg-network-lab -o table
```

Virtual Machines:

```bash
az vm list -g arshad-rg-network-lab -o table
```

Load Balancers:

```bash
az network lb list -g arshad-rg-network-lab -o table
```

Bastion:

```bash
az network bastion list -g arshad-rg-network-lab -o table
```

VNets:

```bash
az network vnet list -g arshad-rg-network-lab -o table
```

---

# 🔒 Security Features

* SSH Key Authentication
* Azure Bastion Access
* Network Security Groups
* Private Virtual Machines
* Azure OIDC Authentication
* Checkov Validation
* Trivy Scanning
* Least Privilege Access

---

# 📊 Security Scanning

## Trivy

Scans:

* Vulnerabilities
* Secrets
* Terraform Misconfigurations
* Configuration Issues

---

## Checkov

Validates:

* Azure Security Best Practices
* Terraform Compliance
* NSG Configuration
* Networking Policies
* Infrastructure Security

---

# 🧹 Cleanup

Destroy infrastructure:

```bash
terraform destroy -auto-approve
```

---

# 📚 Concepts Covered

* Infrastructure as Code
* Terraform Providers
* Terraform Modules
* Variables
* Outputs
* Azure Resource Groups
* Virtual Networks
* Subnets
* Network Security Groups
* Azure Linux Virtual Machines
* Azure Bastion
* Azure Load Balancer
* NAT Gateway
* VNet Peering
* Remote Backend
* Azure DevOps Pipelines
* GitHub Actions
* OIDC Authentication
* Checkov
* Trivy
* AI-assisted Infrastructure Review

---

# 🎯 Learning Outcomes

After completing this project, you will understand:

* Enterprise Terraform Project Structure
* Azure Networking Fundamentals
* Infrastructure as Code Best Practices
* Modular Terraform Design
* Remote State Management
* Azure Load Balancer Architecture
* Azure Bastion Connectivity
* VNet Peering
* Azure DevOps CI/CD
* GitHub Actions Automation
* OIDC Authentication
* Infrastructure Security
* DevSecOps Principles
* AI-assisted Terraform Review

---

# 🚀 Future Enhancements

* Azure Kubernetes Service (AKS)
* Azure Container Registry (ACR)
* Azure Key Vault
* Azure Monitor
* Log Analytics Workspace
* Azure Application Gateway
* GitHub Self-hosted Runner
* Multi-environment Deployment (Dev, Test, Prod)
* Terraform Workspaces
* Policy as Code
* Cost Optimization Dashboard

---

# 👨‍💻 Author

**Mohd Arshad**

**Azure | Terraform | DevOps | Cloud Engineer**

GitHub: https://github.com/arshaddevops20

---

⭐ **If you found this project useful, consider giving it a star and sharing it with the community.**
