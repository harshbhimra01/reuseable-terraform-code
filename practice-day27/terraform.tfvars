rgs = {
  rg1 = {
    name     = "harsh"
    location = "central india"
  }
}
vnets = {
  vnet1 = {
    name                = "harshvnet"
    location            = "rg1"
    resource_group_name = "rg1"
    address_space       = ["10.0.0.0/16"]
  }
}
sub = {
  sub1 = {
    name                 = "harshsubnet"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
public_ips = {
  ip1 = {
    name                = "harship"
    location            = "rg1"
    resource_group_name = "rg1"
    allocation_method   = "Static"
  }
}
nic-map = {
  nic1 = {
    name                          = "harshnic"
    location                      = "rg1"
    resource_group_name           = "rg1"
    ipname                        = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = "sub1"
    public_ip_address_id          = "ip1"
  }
}
nsgs = {
  nsg1 = {
    name                       = "harshhack"
    location                   = "rg1"
    resource_group_name        = "rg1"
    name_security              = "harshsecurity"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "103.155.140.69"
    destination_address_prefix = "*"
  }
}
vm_map = {
  vm1 = {
    name                            = "harshvm"
    location                        = "rg1"
    resource_group_name             = "rg1"
    ip_name                         = "testing_ip"
    subnet_id                       = "sub1"
    private_ip_address_allocation   = "Dynamic"
    network_interface_ids           = "nic1"
    vm_size                         = "Standard_B2als_v2"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
    os_name                         = "myosdisk1"
    caching                         = "ReadWrite"
    create_option                   = "FromImage"
    managed_disk_type               = "Standard_LRS"
    computer_name                   = "harsh"
    admin_username                  = "harsh"
    admin_password                  = "Harsh@123"
    sku_ip                          = "Standard"
    allocation_method               = "Static"
    network_security_group_id       = "nsg1"
    disable_password_authentication = false
  }

}