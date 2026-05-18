resource "azurerm_resource_group" "rgs" {
  for_each = var.mapping
  name     = each.key
  location = each.value
}