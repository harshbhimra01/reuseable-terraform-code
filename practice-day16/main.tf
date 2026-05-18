resource "azurerm_resource_group" "rg" {
  for_each = var.rgvar
  name     = each.key
  location = each.value
}