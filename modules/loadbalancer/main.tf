resource "azurerm_public_ip" "lb_pip" {
  name                = "${var.prefix}-lb-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_lb" "lb" {
  name                = "${var.prefix}-lb"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.lb_pip.id
  }
}

resource "azurerm_lb_backend_address_pool" "backend_pool" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "backendpool"
}

resource "azurerm_network_interface_backend_address_pool_association" "nic_assoc" {
  network_interface_id    = var.nic_id
  ip_configuration_name   = "frontend-ipconfig"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backend_pool.id
}

resource "azurerm_lb_probe" "http_probe" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "http-probe"
  port            = 80
}

resource "azurerm_lb_rule" "http_rule" {
  loadbalancer_id                = azurerm_lb.lb.id
  name                           = "HTTPRule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.backend_pool.id]
  probe_id                       = azurerm_lb_probe.http_probe.id
}