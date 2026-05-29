resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnet-map

  name          = each.value.name
  address_space = each.value.address_space

  location = azurerm_resource_group.rg[each.value.rg_reference].location

  resource_group_name = azurerm_resource_group.rg[each.value.rg_reference].name
}