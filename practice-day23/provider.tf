terraform {
    backend "azurerm" {
      resource_group_name = "tanjiro"
      storage_account_name = "tanjirostg"
      container_name = "tanjirocn"
      key = "tanjirobackend"
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