resource "azurerm_resource_group" "rg" {
  for_each = var.rg-map
  name     = each.value.name
  location = each.value.location
}

resource "azurerm_storage_account" "stg" {
  for_each                 = var.stg-map
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = azurerm_resource_group.rg[each.value.rg_stg].name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

resource "azurerm_storage_container" "cn" {
  for_each              = var.cn-map
  name                  = each.value.name
  storage_account_id    = azurerm_storage_account.stg[each.value.stg_reference].id
  container_access_type = each.value.container_access_type
}