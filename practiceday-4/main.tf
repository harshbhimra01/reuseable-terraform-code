terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }
}
provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "name" {
  name     = var.rg
  location = var.location
}