terraform {
  backend "azurerm" {
    resource_group_name  = "rg-resources"
    storage_account_name = "sonirekhachahatshivam"
    container_name       = "vhds"
    key                  = "prod.terraform.tfstate"
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