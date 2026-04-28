resource "azurerm_resource_group" "rg" {
  name     = var.config.rg
  location = var.config.l
}
resource "azurerm_storage_account" "storage" {
  name                     = var.config.st
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.config.ac-tier
  account_replication_type = var.config.ac-rep
}
resource "azurerm_storage_container" "cn" {
  name                  = var.config.cn
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = var.config.con-access
}