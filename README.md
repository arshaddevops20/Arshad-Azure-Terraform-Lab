# 🚀 Arshad Azure Terraform Lab

## 📌 Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform on Microsoft Azure.

The lab includes:

* Resource Group
* Virtual Networks (Prod & Dev)
* Subnets
* Network Security Group (NSG)
* Azure Virtual Machines
* VNet Peering
* Azure Bastion
* Private Networking Architecture

---

# 🏗️ Architecture

```text
Resource Group
│
├── VNet Prod (10.0.0.0/16)
│   ├── frontend-subnet (10.0.1.0/24)
│   ├── AzureBastionSubnet (10.0.2.0/24)
│   └── Frontend VM
│
├── VNet Dev (10.1.0.0/16)
│   └── backend-subnet (10.1.1.0/24)
│       └── Backend VM
│
├── Network Security Group
│
├── VNet Peering
│   ├── Prod → Dev
│   └── Dev → Prod
│
└── Azure Bastion
    └── Public IP
```

---

# 📂 Folder Structure

```text
Arshad-Azure-Terraform-Lab/
│
├── provider.tf
├── variables.tf
├── terraform.tfvars.example
├── main.tf
├── outputs.tf
│
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── vm/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── bastion/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── .gitignore
└── README.md
```

---

# 🔧 Technologies Used

* Terraform
* Microsoft Azure
* Azure Virtual Network
* Azure Virtual Machines
* Azure Bastion
* Network Security Groups
* VNet Peering

---

# 📋 Prerequisites

Install:

* Terraform
* Azure CLI
* Git
* Azure Subscription

Verify:

```bash
terraform version
az version
git --version
```

---

# 🔑 Azure Login

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

# ⚙️ Terraform Configuration

Create a file:

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

# 🚀 Deployment Steps

Initialize Terraform:

```bash
terraform init
```

Validate:

```bash
terraform validate
```

Plan:

```bash
terraform plan
```

Apply:

```bash
terraform apply -auto-approve
```

---

# 📊 Verify Resources

List Azure Resources:

```bash
az resource list -g arshad-rg-network-lab -o table
```

List Virtual Machines:

```bash
az vm list -g arshad-rg-network-lab -o table
```

Check Bastion:

```bash
az network bastion list -g arshad-rg-network-lab -o table
```

---

# 🔒 Security Features

* No Public IP on Virtual Machines
* SSH Access through Azure Bastion
* NSG controlled traffic
* Private Network Communication
* Infrastructure as Code

---

# 🧹 Destroy Resources

```bash
terraform destroy -auto-approve
```

---

# 📚 Terraform Concepts Covered

* Providers
* Variables
* Outputs
* Modules
* Resource Groups
* VNets
* Subnets
* NSGs
* NICs
* Virtual Machines
* Azure Bastion
* VNet Peering
* Terraform State

---

# 🎯 Learning Outcome

After completing this lab, you will understand:

* Azure Networking Fundamentals
* Infrastructure as Code
* Terraform Module Design
* Azure Bastion Connectivity
* VNet Peering
* Secure VM Deployments
* Real-world Azure Architecture

---

# 👨‍💻 Author

**Mohd Arshad**

Azure | Terraform | DevOps Engineer

GitHub: https://github.com/arshaddevops20

```
```
