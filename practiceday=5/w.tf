resource "azurerm_resource_group" "rg" {
  for_each = toset(var.rg)
  name     = each.value
  location = "south india"
}