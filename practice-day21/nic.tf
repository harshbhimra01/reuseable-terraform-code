resource "azurerm_network_interface" "nic" {
  for_each = var.nic-map

  name                = each.value.name
  location            = azurerm_resource_group.rg[each.value.rg_reference].location
  resource_group_name = azurerm_resource_group.rg[each.value.rg_reference].name

  ip_configuration {
    name = "internal"

    subnet_id = azurerm_subnet.subnet[each.value.subnet_reference].id

    private_ip_address_allocation = "Dynamic"

    public_ip_address_id = azurerm_public_ip.pip[each.value.pip_reference].id
  }
}