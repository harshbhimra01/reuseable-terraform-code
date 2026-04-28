resource "azurerm_resource_group" "rg" {
  name     = var.azure.rg
  location = var.azure.location
}
resource "azurerm_storage_account" "stg" {
  name                     = var.azure.storage
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             = var.azure.access_tier
  account_replication_type = var.azure.account_replication_type
}
resource "azurerm_storage_container" "container" {
  name                  = var.azure.container
  storage_account_id    = azurerm_storage_account.stg.id
  container_access_type = var.azure.container_access_type
}