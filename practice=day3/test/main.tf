
resource "azurerm_resource_group" "rg" {
  name     = var.rg-name
  location = var.location
}

resource "azurerm_storage_account" "stg" {
  name                     = var.stg_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_container" "cn" {
  name = "container"
  storage_account_id = azurerm_storage_account.stg.id
  container_access_type = "private"
}