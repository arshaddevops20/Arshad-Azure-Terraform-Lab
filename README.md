# 🚀 Arshad Azure Terraform Lab

## 📌 Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform on Microsoft Azure.

The lab includes:

* Resource Group
* Virtual Networks (Prod & Dev)
* Subnets
* Network Security Group (NSG)
* Azure Virtual Machines
* Azure Load Balancer
* VNet Peering
* Azure Bastion
* Private Networking Architecture

---

# 🏗️ Architecture

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
│   ├── vm/
│   ├── bastion/
│   └── loadbalancer/
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
* Azure Load Balancer
* Azure Bastion
* Network Security Groups
* VNet Peering
* Nginx

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

Set Subscription:

```bash
az account set --subscription <subscription-id>
```

Verify:

```bash
az account show
```

---

# ⚙️ Terraform Configuration

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

# 🚀 Deployment Steps

Initialize:

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

# 🌐 Load Balancer Verification

Get Load Balancer Public IP:

```bash
terraform output lb_public_ip
```

Open:

```text
http://<LOAD_BALANCER_PUBLIC_IP>
```

Expected Result:

* Nginx default page is displayed.
* Traffic is routed through Azure Load Balancer.
* Backend pool contains Frontend VM.

---

# 📊 Verify Resources

```bash
az resource list -g arshad-rg-network-lab -o table
```

```bash
az vm list -g arshad-rg-network-lab -o table
```

```bash
az network lb list -g arshad-rg-network-lab -o table
```

```bash
az network bastion list -g arshad-rg-network-lab -o table
```

---

# 🔒 Security Features

* No Public IP on Virtual Machines
* SSH Access through Azure Bastion
* NSG Controlled Traffic
* HTTP Access through Azure Load Balancer
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
* Azure Load Balancer
* Azure Bastion
* Virtual Machines
* VNet Peering
* Terraform State

---

# 🎯 Learning Outcome

After completing this lab, you will understand:

* Azure Networking Fundamentals
* Infrastructure as Code
* Terraform Module Design
* Azure Load Balancer
* Azure Bastion Connectivity
* VNet Peering
* Secure VM Deployments
* Real-world Azure Architecture

---

# 👨‍💻 Author

**Mohd Arshad**

Azure | Terraform | DevOps Engineer

GitHub: https://github.com/arshaddevops20
