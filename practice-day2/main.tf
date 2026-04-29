resource "azurerm_resource_group" "rg" {
  name     = var.rg
  location = var.location
}

resource "azurerm_storage_account" "stg" {
  name                     = var.stg
  resource_group_name      = var.rg
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  depends_on               = [azurerm_resource_group.rg]
}

resource "azurerm_storage_container" "name" {
  name = var.container
  storage_account_id = azurerm_storage_account.stg.id
  container_access_type = var.container_access_type
}