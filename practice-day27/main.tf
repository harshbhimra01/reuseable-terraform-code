resource "azurerm_resource_group" "rg" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}
resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnets
  name                = each.value.name
  location            = azurerm_resource_group.rg[each.value.location].location
  resource_group_name = azurerm_resource_group.rg[each.value.resource_group_name].name
  address_space       = each.value.address_space
}
resource "azurerm_subnet" "subnet" {
  for_each             = var.sub
  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.rg[each.value.resource_group_name].name
  virtual_network_name = azurerm_virtual_network.vnet[each.value.virtual_network_name].name
  address_prefixes     = each.value.address_prefixes
}
resource "azurerm_public_ip" "public_ip" {
  for_each            = var.public_ips
  name                = each.value.name
  location            = azurerm_resource_group.rg[each.value.resource_group_name].location
  resource_group_name = azurerm_resource_group.rg[each.value.resource_group_name].name
  allocation_method   = each.value.allocation_method
}
resource "azurerm_network_interface" "nic" {
  for_each            = var.nic-map
  name                = each.value.name
  location            = azurerm_resource_group.rg[each.value.resource_group_name].location
  resource_group_name = azurerm_resource_group.rg[each.value.resource_group_name].name
  ip_configuration {
    name                          = each.value.name
    subnet_id                     = azurerm_subnet.subnet[each.value.subnet_id].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
    public_ip_address_id          = azurerm_public_ip.public_ip[each.value.public_ip_address_id].id
  }
}
resource "azurerm_network_security_group" "nsg" {
  for_each            = var.nsgs
  name                = each.value.name
  location            = azurerm_resource_group.rg[each.value.location].location
  resource_group_name = azurerm_resource_group.rg[each.value.resource_group_name].name

  security_rule {
    name                       = each.value.name_security
    priority                   = each.value.priority
    direction                  = each.value.direction
    access                     = each.value.access
    protocol                   = each.value.protocol
    source_port_range          = each.value.source_port_range
    destination_port_range     = each.value.destination_port_range
    source_address_prefix      = each.value.source_address_prefix
    destination_address_prefix = each.value.destination_address_prefix
  }
}
resource "azurerm_virtual_machine" "vms" {
  for_each              = var.vm_map
  name                  = each.value.name
  location              = azurerm_resource_group.rg[each.value.location].location
  resource_group_name   = azurerm_resource_group.rg[each.value.resource_group_name].name
  network_interface_ids = [azurerm_network_interface.nic[each.value.network_interface_ids].id]
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
    disable_password_authentication = each.value.disable_password_authentication
  }
}
