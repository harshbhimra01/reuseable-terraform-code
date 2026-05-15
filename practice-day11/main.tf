terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "robin"
  location = "eastus"
}

resource "azurerm_storage_account" "stg" {
  depends_on = [ azurerm_resource_group.rg ]
  name = "azurekabaap"
  resource_group_name = azurerm_resource_group.rg.name
  location = "eastus"
  account_replication_type = "LRS"
  account_tier = "Standard"
}