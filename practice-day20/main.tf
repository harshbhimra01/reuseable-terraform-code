resource "azurerm_resource_group" "rg" {
  for_each = toset(var.name)
  name     = each.value
  location = var.location
}