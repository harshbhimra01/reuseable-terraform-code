rg_map = {
  rg1 = {
    name     = "virtualrg"
    location = "south india"
  }
  rg2 = {
    name     = "networkrg"
    location = "central india"
  }
}
vn_map = {
  vn1 = {
    name          = "mywifi"
    rg_reference  = "rg1"
    location      = "south india"
    address_space = "10.10.0.0/16"
  }
  vn2 = {
    name          = "mydearwifi"
    rg_reference  = "rg2"
    location      = "central india"
    address_space = "10.10.0.0/16"
  }
}

stg_map = {
  stg1 = {
    name                     = "realmebuds"
    rg_reference             = "rg1"
    location                 = "south india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  stg2 = {
    name                     = "oneplusbuds"
    rg_reference             = "rg2"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
cn_map = {
  cn1 = {
    name                  = "jbl"
    stg_reference         = "stg1"
    container_access_type = "private"
  }
  cn2 = {
    name                  = "bose"
    stg_reference         = "stg2"
    container_access_type = "private"
  }
}