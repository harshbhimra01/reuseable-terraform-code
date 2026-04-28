terraform {
    backend "azurerm" {
      resource_group_name = "ashish"
      storage_account_name = "harshhaveagoodpc"
      container_name = "harsh"
      key = "backend=file"
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
