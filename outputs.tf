output "resource_group_name" {
  value = module.network.resource_group_name
}

output "frontend_subnet_id" {
  value = module.network.frontend_subnet_id
}

output "backend_subnet_id" {
  value = module.network.backend_subnet_id
}

# output "frontend_public_ip" {
#   value = module.vm.frontend_public_ip
# }

# output "backend_public_ip" {
#   value = module.vm.backend_public_ip
# }

output "frontend_vm_name" {
  value = module.vm.frontend_vm_name
}

output "backend_vm_name" {
  value = module.vm.backend_vm_name
}

output "bastion_name" {
  value = module.bastion.bastion_name
}

output "bastion_public_ip" {
  value = module.bastion.bastion_public_ip
}

output "ssh_private_key" {
  sensitive = true
  value     = module.vm.private_key_pem
}