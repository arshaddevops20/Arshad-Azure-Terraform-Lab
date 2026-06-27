# 🚀 Arshad Azure Terraform Lab

![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform)
![Azure](https://img.shields.io/badge/Azure-Cloud-0078D4?logo=microsoftazure)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI/CD-2088FF?logo=githubactions)
![Security](https://img.shields.io/badge/Security-Trivy%20%7C%20Checkov-success)

## 📖 Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform and Microsoft Azure.

The infrastructure is designed using reusable Terraform modules and validated through GitHub Actions CI/CD pipelines with integrated security scanning and Azure OIDC authentication.

---

## ✨ Features

* Modular Terraform Architecture
* Azure Resource Group
* Virtual Networks (Production & Development)
* Subnets & Network Security Groups
* Azure Linux Virtual Machines
* Azure Load Balancer
* Azure Bastion Host
* VNet Peering
* GitHub Actions CI/CD
* OIDC Authentication
* Trivy Security Scanning
* Checkov Terraform Security Validation
* Infrastructure as Code Best Practices

---

## 🏗️ Architecture

```text
Internet
   │
   ▼
Azure Load Balancer
   │
   ▼
Frontend VM (Nginx)
   │
   ├── Azure Bastion
   │
   └── VNet Prod (10.0.0.0/16)
        ├── frontend-subnet (10.0.1.0/24)
        └── AzureBastionSubnet (10.0.2.0/24)

VNet Dev (10.1.0.0/16)
   └── backend-subnet (10.1.1.0/24)
        └── Backend VM

VNet Peering
   ├── Prod → Dev
   └── Dev → Prod
```

---

## 📂 Repository Structure

```text
Arshad-Azure-Terraform-Lab/
│
├── .github/
│   └── workflows/
│       ├── azure-login-test.yml
│       ├── terraform-init.yml
│       ├── terraform-validate.yml
│       ├── terraform-plan.yml
│       ├── security.yml
│       └── checkov.yml
│
├── modules/
│   ├── network/
│   ├── vm/
│   ├── bastion/
│   └── loadbalancer/
│
├── azure-destroy-pipelines.yml
├── azure-pipelines.yml
├── provider.tf
├── variables.tf
├── main.tf
├── outputs.tf
├── terraform.tfvars.example
├── README.md
└── .gitignore
```

---

## 🔄 GitHub Actions Workflows

| Workflow            | Purpose                                    |
| ------------------- | ------------------------------------------ |
| Terraform Init      | Initialize Terraform modules and providers |
| Terraform Validate  | Validate Terraform configuration           |
| Terraform Plan      | Preview infrastructure changes             |
| Azure Login Test    | Test Azure OIDC authentication             |
| Trivy Security Scan | Filesystem security scanning               |
| Checkov Scan        | Terraform security & compliance checks     |

### CI/CD Benefits

* Automated Validation
* Infrastructure Consistency
* Security Scanning
* Shift Left Security
* DevOps Best Practices
* Reusable Infrastructure

---

## 🔐 Azure OIDC Authentication

This project uses GitHub Actions OpenID Connect (OIDC) authentication with Microsoft Entra ID.

Required GitHub Secrets:

```text
AZURE_CLIENT_ID
AZURE_TENANT_ID
AZURE_SUBSCRIPTION_ID
```

Benefits:

* No Client Secret Required
* Secure Authentication
* Short-Lived Tokens
* Industry Best Practice

---

## 🛠️ Technologies Used

### Cloud

* Microsoft Azure
* Azure Virtual Network
* Azure Bastion
* Azure Load Balancer
* Azure Virtual Machines

### Infrastructure as Code

* Terraform
* Terraform Modules

### DevOps

* GitHub Actions
* Azure CLI
* Git

### Security

* Trivy
* Checkov

### Web Server

* Nginx

---

## 📋 Prerequisites

Install the following:

```bash
terraform version
az version
git --version
```

Required Tools:

* Terraform
* Azure CLI
* Git

---

## 🔑 Azure Authentication

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

## ⚙️ Terraform Configuration

Create:

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

## 🚀 Deployment Steps

### Initialize

```bash
terraform init
```

### Validate

```bash
terraform validate
```

### Review Changes

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply -auto-approve
```

---

## 🌐 Verification

### List Azure Resources

```bash
az resource list -g arshad-rg-network-lab -o table
```

### List Virtual Machines

```bash
az vm list -g arshad-rg-network-lab -o table
```

### List Load Balancers

```bash
az network lb list -g arshad-rg-network-lab -o table
```

### List Bastion Hosts

```bash
az network bastion list -g arshad-rg-network-lab -o table
```

---

## 🔒 Security Features

* Private VM Architecture
* Azure Bastion Access
* SSH Key Authentication
* NSG Controlled Access
* Load Balancer Frontend Exposure
* OIDC Authentication
* Trivy Security Scanning
* Checkov Compliance Validation

---

## 📊 Security Scanning

### Trivy

Scans:

* Secrets
* Terraform Files
* Configuration Issues
* Vulnerabilities

### Checkov

Validates:

* Azure Security Best Practices
* NSG Rules
* Networking Policies
* Infrastructure Compliance

---

## 🧹 Cleanup

Destroy all resources:

```bash
terraform destroy -auto-approve
```

---

## 📚 Concepts Covered

* Terraform Providers
* Variables & Outputs
* Modules
* Resource Groups
* Virtual Networks
* Subnets
* Network Security Groups
* Azure Bastion
* Azure Load Balancer
* Virtual Machines
* VNet Peering
* Terraform State
* GitHub Actions
* OIDC Authentication
* Trivy Security Scanning
* Checkov Security Validation

---

## 🎯 Learning Outcomes

After completing this project, you will understand:

* Azure Networking Fundamentals
* Infrastructure as Code (IaC)
* Terraform Module Design
* Azure Load Balancer Architecture
* Azure Bastion Connectivity
* VNet Peering
* GitHub Actions Automation
* OIDC Authentication
* Security Scanning in CI/CD
* DevOps Best Practices

---

## 👨‍💻 Author

**Mohd Arshad**

Azure | Terraform | DevOps Engineer

GitHub: https://github.com/arshaddevops20
