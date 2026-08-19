terraform {
  required_version = "= 1.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "sko-tfstate-rg"
    storage_account_name = "skotfstateaccount"
    container_name       = "tfstate"
    key                  = "vm-${terraform.workspace}.tfstate"
  }
}

provider "azurerm" {
  features {}
}
