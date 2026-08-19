terraform {
  backend "azurerm" {
    resource_group_name  = "sko-tfstate-rg"
    storage_account_name = "skotfstateaccount"
    container_name       = "tfstate"
    key                  = "vm-${terraform.workspace}.tfstate"
  }
}
