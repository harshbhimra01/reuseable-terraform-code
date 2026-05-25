resource "azurerm_virtual_network" "vn" {
  for_each            = var.vn_map
  name                = each.value.name
  location            = each.value.location
  resource_group_name = azurerm_resource_group.rg[each.value.rg_reference].name
  address_space       = [each.value.address_space]
}