resource "azurerm_resource_group" "rg" {
  for_each = toset(var.rg-rg)
  name     = each.key
  location = var.location
}

# resource "azurerm_storage_account" "stg" {
#   name                     = var.storage
#   location                 = var.location
#   account_tier             = var.account_tier
#   account_replication_type = var.account_replication_type
#   resource_group_name      = azurerm_resource_group.rg.each.key
# }

# resource "azurerm_storage_container" "cn" {
#   name                  = var.cn-name
#   storage_account_id    = azurerm_storage_account.stg.id
#   container_access_type = var.container_access_type
# }

