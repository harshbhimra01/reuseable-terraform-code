terraform {
    backend "azurerm" {
      resource_group_name = "deepak-rg"
      storage_account_name = "backendbakuaa"
      container_name = "soni"
      key = "backend-tfstate"
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