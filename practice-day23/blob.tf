resource "azurerm_storage_blob" "blob" {
  for_each               = var.blob_map
  name                   = each.value.name
  storage_account_name   = azurerm_storage_account.stg[each.value.stg_reference].name
  storage_container_name = azurerm_storage_container.cn[each.value.cn_reference].name
  type                   = each.value.type
  source                 = each.value.source
}