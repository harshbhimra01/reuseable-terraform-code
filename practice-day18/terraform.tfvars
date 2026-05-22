rg_map = {
  rg0 = {
    name     = "eren"
    location = "central india"
  }
  rg1 = {
    name     = "mikasa"
    location = "south india"
  }
  rg2 = {
    name     = "armin"
    location = "eastus"
  }
}

stg_map = {
  stg0 = {
    name                     = "erenmikasa"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    rg_reference             = "rg0"

  }
  stg1 = {
    name                     = "erenlevi"
    location                 = "south india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    rg_reference             = "rg1"
  }
  stg2 = {
    name                     = "erenfreedom"
    location                 = "east us"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    rg_reference             = "rg2"
  }
}

cn_map = {
  cn0 = {
    name                  = "erwin"
    container_access_type = "private"
    stg_reference         = "stg0"
  }
  cn1 = {
    name                  = "levi"
    container_access_type = "private"
    stg_reference         = "stg1"
  }
  cn2 = {
    name                  = "mikasa"
    container_access_type = "private"
    stg_reference         = "stg2"
  }
}