# =====================================
# PUBLIC IPs
# =====================================

# resource "azurerm_public_ip" "frontend_pip" {
#   name                = "frontend-pip"
#   location            = var.location
#   resource_group_name = var.resource_group_name

#   allocation_method = "Static"
#   sku               = "Standard"
# }

# resource "azurerm_public_ip" "backend_pip" {
#   name                = "backend-pip"
#   location            = var.location
#   resource_group_name = var.resource_group_name

#   allocation_method = "Static"
#   sku               = "Standard"
# }

# =====================================
# NETWORK INTERFACES
# =====================================

resource "azurerm_network_interface" "frontend_nic" {
  name                = "frontend-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "frontend-ipconfig"
    subnet_id                     = var.frontend_subnet_id
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id          = azurerm_public_ip.frontend_pip.id
  }
}

resource "azurerm_network_interface" "backend_nic" {
  name                = "backend-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "backend-ipconfig"
    subnet_id                     = var.backend_subnet_id
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id          = azurerm_public_ip.backend_pip.id
  }
}

# =====================================
# SSH KEY
# =====================================

resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# =====================================
# FRONTEND VM
# =====================================

resource "azurerm_linux_virtual_machine" "frontend_vm" {
  name                = "arshad-frontend-vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size

  admin_username = var.admin_username

  network_interface_ids = [
    azurerm_network_interface.frontend_nic.id
  ]

  disable_password_authentication = true

  admin_ssh_key {
    username   = var.admin_username
    public_key = tls_private_key.ssh_key.public_key_openssh
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

source_image_reference {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}
}

# =====================================
# BACKEND VM
# =====================================

resource "azurerm_linux_virtual_machine" "backend_vm" {
  name                = "arshad-backend-vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size

  admin_username = var.admin_username

  network_interface_ids = [
    azurerm_network_interface.backend_nic.id
  ]

  disable_password_authentication = true

  admin_ssh_key {
    username   = var.admin_username
    public_key = tls_private_key.ssh_key.public_key_openssh
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

 source_image_reference {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}
}