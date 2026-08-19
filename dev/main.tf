resource "azurerm_resource_group" "rg" {
  name     = "sko-dev-rg"
  location = var.location
}

module "networking" {
  source              = "../modules/networking"
  env                 = "dev"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}

module "vm" {
  source              = "../modules/vm"
  env                 = "dev"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  nic_id              = module.networking.nic_id
  ssh_public_key      = var.ssh_public_key
}
