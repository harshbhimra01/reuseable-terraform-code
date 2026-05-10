resource "azurerm_resource_group" "goo" {
  for_each = var.rgs
  name     = each.key
  location = each.value
}