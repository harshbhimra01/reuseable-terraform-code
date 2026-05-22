terraform {
    backend "azurerm" {
      resource_group_name = "practice-e"
      storage_account_name = "bakuaahaituu"
      container_name = "container"
      key = "tfstate"
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





