resource "azurerm_storage_container" "cn" {
  for_each              = var.cn_map
  name                  = each.value.name
  storage_account_id    = azurerm_storage_account.stg[each.value.stg_reference].id
  container_access_type = each.value.container_access_type
}