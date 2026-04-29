terraform {
    backend "azurerm" {
      resource_group_name = "phones"
      storage_account_name = "phonehasabigscreen"
      container_name = "digidigi"
    }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
}
provider "azurerm" {
  features {}
}
