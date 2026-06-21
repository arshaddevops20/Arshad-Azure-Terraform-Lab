# 🚀 Arshad Azure Terraform Lab

## 📖 Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform and Microsoft Azure.

The infrastructure is built using reusable Terraform modules and validated through GitHub Actions CI workflows.

### Key Components

* Azure Resource Group
* Virtual Networks (Prod & Dev)
* Subnets
* Network Security Groups (NSG)
* Azure Virtual Machines
* Azure Load Balancer
* Azure Bastion
* VNet Peering
* GitHub Actions CI Pipeline
* Infrastructure as Code (Terraform)

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

## 📂 Project Structure

```text
Arshad-Azure-Terraform-Lab/
│
├── .github/
│   └── workflows/
│       ├── azure-login-test.yml
│       ├── terraform-init.yml
│       ├── terraform-plan.yml
│       ├── terraform-validate.yml
│       └── security.yml
│
├── modules/
│   ├── network/
│   ├── vm/
│   ├── bastion/
│   └── loadbalancer/
│
├── provider.tf
├── variables.tf
├── main.tf
├── outputs.tf
├── terraform.tfvars.example
├── README.md
└── .gitignore
```

---

## 🛠️ Technologies Used

* Terraform
* Microsoft Azure
* Azure Virtual Network
* Azure Virtual Machines
* Azure Load Balancer
* Azure Bastion
* GitHub Actions
* Azure CLI
* Nginx

---

## 🔄 GitHub Actions CI/CD

This repository includes GitHub Actions workflows for Terraform automation.

### Available Workflows

| Workflow           | Purpose                                    |
| ------------------ | ------------------------------------------ |
| Terraform Init     | Initialize Terraform modules and providers |
| Terraform Validate | Validate Terraform configuration           |
| Terraform Plan     | Preview infrastructure changes             |
| Azure Login Test   | Test Azure OIDC authentication             |
| Security Scan      | Infrastructure security checks             |

### Benefits

* Automated Terraform validation
* Infrastructure consistency
* CI pipeline integration
* DevOps best practices
* Reusable Infrastructure as Code

---

## 🔐 Azure Authentication

This project supports GitHub Actions OIDC authentication with Microsoft Entra ID.

Required GitHub Secrets:

```text
AZURE_CLIENT_ID
AZURE_TENANT_ID
AZURE_SUBSCRIPTION_ID
```

---

## 📋 Prerequisites

Install the following tools:

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

## 🔑 Azure Login

```bash
az login
```

Set subscription:

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

## 🚀 Deployment

Initialize:

```bash
terraform init
```

Validate:

```bash
terraform validate
```

Review changes:

```bash
terraform plan
```

Deploy:

```bash
terraform apply -auto-approve
```

---

## 🌐 Infrastructure Verification

List resources:

```bash
az resource list -g arshad-rg-network-lab -o table
```

List VMs:

```bash
az vm list -g arshad-rg-network-lab -o table
```

List Load Balancers:

```bash
az network lb list -g arshad-rg-network-lab -o table
```

List Bastion Hosts:

```bash
az network bastion list -g arshad-rg-network-lab -o table
```

---

## 🔒 Security Features

* Private VM Architecture
* Azure Bastion Access
* NSG-based Traffic Control
* Load Balancer Frontend Exposure
* Infrastructure as Code
* GitHub Actions Validation
* OIDC Authentication Support

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
* Terraform Modules
* Azure Resource Groups
* VNets & Subnets
* Network Security Groups
* Azure Virtual Machines
* Azure Bastion
* Azure Load Balancer
* VNet Peering
* Terraform State Management
* GitHub Actions
* OIDC Authentication

---

## 🎯 Learning Outcomes

After completing this project, you will understand:

* Azure Networking Fundamentals
* Infrastructure as Code
* Terraform Module Design
* Azure Load Balancer Architecture
* Azure Bastion Connectivity
* VNet Peering
* GitHub Actions Automation
* OIDC Authentication
* DevOps CI/CD Practices

---

## 👨‍💻 Author

**Mohd Arshad**

Azure | Terraform | DevOps Engineer

GitHub: https://github.com/arshaddevops20
