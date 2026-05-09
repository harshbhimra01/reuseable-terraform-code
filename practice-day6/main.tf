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

resource "azurerm_resource_group" "rg" {
    for_each = toset(var.var-rg)
  name     = each.key
  location = var.location
}