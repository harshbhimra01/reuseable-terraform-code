nsg = {

  isagi = {

    name                = "isagi-nsg"
    location            = "centralindia"
    resource_group_name = "harsh"

    rule_name = "Allow-SSH"
    priority  = 100
    direction = "Inbound"
    access    = "Allow"
    protocol  = "Tcp"

    source_port_range      = "*"
    destination_port_range = "22"

    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }

}