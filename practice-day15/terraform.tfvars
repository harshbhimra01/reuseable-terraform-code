rg-map = {
  rg1 = {
    name     = "chulbul-rgs"
    location = "central india"
  }
  rg2 = {
    name     = "panday-rgs"
    location = "south india"
  }
}

stg-map = {
  stg1 = {
    name                     = "chulbulpandays"
    location                 = "central india"
    resource_group_name      = "chulbul-rg"
    rg_stg                   = "rg1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  stg2 = {
    name                     = "pandaystoragess"
    location                 = "south india"
    resource_group_name      = "panday-rg"
    rg_stg                   = "rg2"    
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

cn-map = {
  cn1 = {
    name                  = "chulbul-cns"
    stg_reference         = "stg1"
    container_access_type = "private"
  }
  cn2 = {
    name                  = "panday-cns"
    stg_reference         = "stg2"
    container_access_type = "private"
  }
}