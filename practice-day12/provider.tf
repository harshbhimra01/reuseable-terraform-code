terraform {
  backend "azurerm" {
    resource_group_name  = "guitars"
    storage_account_name = "laptopisnewers"
    container_name       = "print"
    key                  = "backendstate"
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