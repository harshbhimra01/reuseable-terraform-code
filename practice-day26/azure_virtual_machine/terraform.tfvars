vm = {
  isagi = {
    location                      = "central india"
    resource_group_name           = "harsh"
    ip_name                       = "testing_ip"
    subnet_id                     = "/subscriptions/4cbab25b-8ada-4997-b9e2-9cd52ca70421/resourceGroups/harsh/providers/Microsoft.Network/virtualNetworks/harshvnet/subnets/harshsub"
    private_ip_address_allocation = "Dynamic"
    network_interface_ids         = ["isagi-nic"]
    vm_size                       = "Standard_B2als_v2"
    publisher                     = "Canonical"
    offer                         = "0001-com-ubuntu-server-jammy"
    sku                           = "22_04-lts"
    version                       = "latest"
    os_name                       = "myosdisk1"
    caching                       = "ReadWrite"
    create_option                 = "FromImage"
    managed_disk_type             = "Standard_LRS"
    computer_name                 = "harsh"
    admin_username                = "harsh"
    admin_password                = "Harsh@123"
    sku_ip                        = "Standard"
    allocation_method             = "Static"
    network_security_group_id     = "/subscriptions/4cbab25b-8ada-4997-b9e2-9cd52ca70421/resourceGroups/harsh/providers/Microsoft.Network/networkSecurityGroups/isagi-nsg"
  }

}