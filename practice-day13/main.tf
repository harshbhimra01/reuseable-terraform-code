resource "azurerm_resource_group" "rg" {
  for_each = var.rg-rg
  name     = each.key
  location = each.value
}