module "network" {
  source   = "./modules/network"
  location = var.location
}

module "vm" {
  source = "./modules/vm"

  location            = var.location
  resource_group_name = module.network.resource_group_name

  frontend_subnet_id = module.network.frontend_subnet_id
  backend_subnet_id  = module.network.backend_subnet_id

  admin_username = var.admin_username
  vm_size        = var.vm_size
}

module "bastion" {
  source = "./modules/bastion"

  location            = var.location
  resource_group_name = module.network.resource_group_name

  bastion_subnet_id = module.network.bastion_subnet_id
}

module "loadbalancer" {
  source = "./modules/loadbalancer"

  prefix              = "arshad"
  location            = var.location
  resource_group_name = module.network.resource_group_name

  nic_id = module.vm.frontend_nic_id
}