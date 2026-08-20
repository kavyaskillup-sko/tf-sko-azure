resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.environment_tag}"
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = ["10.0.00/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet-${var.environment_tag}"
  resource_group_name  = var.resource_group
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
