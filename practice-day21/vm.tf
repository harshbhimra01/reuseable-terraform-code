resource "azurerm_linux_virtual_machine" "vm" {
  for_each = var.vm-map

  name                = each.value.name
  location            = azurerm_resource_group.rg[each.value.rg_reference].location
  resource_group_name = azurerm_resource_group.rg[each.value.rg_reference].name

  size = each.value.size

  admin_username = each.value.admin_username
  admin_password = each.value.admin_password

  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.nic[each.value.nic_reference].id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}