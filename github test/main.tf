terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "ball" {
  name     = "harsh-resources1"
  location = "central india"
}

resource "azurerm_storage_account" "implicit" {
  name                     = "linkedinpostharsh"
  resource_group_name      = azurerm_resource_group.ball.name
  location                 = azurerm_resource_group.ball.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_account" "explicit" {
  depends_on               = [azurerm_resource_group.ball]
  name                     = "linkedinsoni"
  resource_group_name      = "harsh-resources1"
  location                 = "central india"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}