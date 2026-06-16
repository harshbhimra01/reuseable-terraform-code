resource "azurerm_public_ip" "ip" {
  for_each = var.vm
  name                = "${each.key}-pip"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
  sku = each.value.sku_ip
}
resource "azurerm_network_interface" "main" {
  for_each            = var.vm
  name                = "${each.key}-nic"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  ip_configuration {
    name                          = each.value.ip_name
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = each.value.private_ip_address_allocation
    public_ip_address_id = azurerm_public_ip.ip[each.key].id
  }
}
resource "azurerm_network_interface_security_group_association" "main" {
  for_each = var.vm

  network_interface_id      = azurerm_network_interface.main[each.key].id
  network_security_group_id = each.value.network_security_group_id
}
resource "azurerm_virtual_machine" "vms" {
  depends_on            = [azurerm_network_interface.main]
  for_each              = var.vm
  name                  = "${each.key}-vm"
  location              = each.value.location
  resource_group_name   = each.value.resource_group_name
  network_interface_ids = [azurerm_network_interface.main[each.key].id]
  vm_size               = each.value.vm_size

  storage_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
  storage_os_disk {
    name              = each.value.os_name
    caching           = each.value.caching
    create_option     = each.value.create_option
    managed_disk_type = each.value.managed_disk_type
  }
  os_profile {
    computer_name  = each.value.computer_name
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}