resource "azurerm_public_ip" "pip" {
  for_each = var.pip-map

  name                = each.value.name
  location            = azurerm_resource_group.rg[each.value.rg_reference].location
  resource_group_name = azurerm_resource_group.rg[each.value.rg_reference].name

  allocation_method = "Static"
}