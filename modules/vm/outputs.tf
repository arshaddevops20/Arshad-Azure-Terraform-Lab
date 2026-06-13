# output "frontend_public_ip" {
#   value = azurerm_public_ip.frontend_pip.ip_address
# }

# output "backend_public_ip" {
#   value = azurerm_public_ip.backend_pip.ip_address
# }

output "frontend_vm_name" {
  value = azurerm_linux_virtual_machine.frontend_vm.name
}

output "backend_vm_name" {
  value = azurerm_linux_virtual_machine.backend_vm.name
}

output "private_key_pem" {
  sensitive = true
  value     = tls_private_key.ssh_key.private_key_pem
}