terraform {
  backend "azurerm" {
    resource_group_name  = "harsh"
    storage_account_name = "harshhaveguts"
    container_name       = "real"
    key                  = "remote-tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  } 
}

provider "azurerm" {
  features {

  }
}