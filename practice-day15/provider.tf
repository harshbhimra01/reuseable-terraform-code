terraform {
  backend "azurerm" {
    resource_group_name  = "chulbul-rg"
    storage_account_name = "chulbulpanday"
    container_name       = "chulbul-cn"
    key                  = "backend"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
}
provider "azurerm" {
  features {}
}