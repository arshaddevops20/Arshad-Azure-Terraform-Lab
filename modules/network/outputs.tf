output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "frontend_subnet_id" {
  value = azurerm_subnet.frontend_subnet.id
}

output "backend_subnet_id" {
  value = azurerm_subnet.backend_subnet.id
}

output "bastion_subnet_id" {
  value = azurerm_subnet.bastion_subnet.id
}