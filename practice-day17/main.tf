resource "azurerm_resource_group" "rg" {
  for_each = var.rgmap
  name     = each.value.name
  location = each.value.location
}
resource "azurerm_storage_account" "stg" {
  for_each                 = var.rgmap
  name                     = each.value.namestg
  resource_group_name      = azurerm_resource_group.rg[each.key].name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}