resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.environment_tag}"
  location = var.location
}

module "networking" {
  source           = "./modules/networking"
  location         = var.location
  environment_tag  = var.environment_tag
  resource_group   = azurerm_resource_group.rg.name
}

module "vm" {
  source           = "./modules/vm"
  location         = var.location
  vm_size          = var.vm_size
  environment_tag  = var.environment_tag
  subnet_id        = module.networking.subnet_id
  resource_group   = azurerm_resource_group.rg.name
  admin_username   = var.admin_username
  ssh_public_key   = var.ssh_public_key
}
