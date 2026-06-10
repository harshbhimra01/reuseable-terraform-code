resource "azurerm_subnet" "subnet" {
  for_each = var.subnet-map
  name = each.value.name
  resource_group_name = azurerm_virtual_network.vnet[each.value.vnet_reference].resource_group_name
  address_prefixes = each.value.address_prefixes
  virtual_network_name = azurerm_virtual_network.vnet[each.value.vnet_reference].name
}