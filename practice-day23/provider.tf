terraform {
  backend "azurerm" {
    resource_group_name  = "bhoot"
    storage_account_name = "bhootkabhai"
    container_name       = "bhai"
    key                  = "backend"
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