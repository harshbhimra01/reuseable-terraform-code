provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = var.rg
  location = var.location
}
resource "azurerm_storage_account" "stg" {
  name                     = var.stg
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  resource_group_name      = azurerm_resource_group.rg.name
}
