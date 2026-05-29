rg-map = {
  rg1 = {
    name     = "demo-rg"
    location = "Central India"
  }
}

vnet-map = {
  vnet1 = {
    name          = "demo-vnet"
    address_space = ["10.0.0.0/16"]
    rg_reference  = "rg1"
  }
}

subnet-map = {
  subnet1 = {
    name             = "demo-subnet"
    address_prefixes = ["10.0.1.0/24"]
    vnet_reference   = "vnet1"
  }
}

pip-map = {
  pip1 = {
    name         = "demo-pip"
    rg_reference = "rg1"
  }
}

nic-map = {
  nic1 = {
    name             = "demo-nic"
    rg_reference     = "rg1"
    subnet_reference = "subnet1"
    pip_reference    = "pip1"
  }
}

vm-map = {
  vm1 = {
    name           = "demo-vm"
    size           = "Standard_B2as_v2"
    admin_username = "azureuser"
    admin_password = "Password@12345"
    rg_reference  = "rg1"
    nic_reference = "nic1"
  }
}