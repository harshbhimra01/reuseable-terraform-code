rg-map = {
  rg1 = {
    name     = "chulbul-rg"
    location = "central india"
  }
  rg2 = {
    name     = "panday-rg"
    location = "south india"
  }
}

stg-map = {
  rg1 = {
    name                     = "chulbulpanday"
    location                 = "central india"
    resource_group_name      = "chulbul-rg"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  rg2 = {
    name                     = "pandaystorages"
    location                 = "south india"
    resource_group_name      = "panday-rg"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

cn-map = {
  rg1 = {
    name                  = "chulbul-cn"
    storage_account_id    = "chulbulpanday"
    container_access_type = "private"
  }
  rg2 = {
    name                  = "panday-cn"
    storage_account_id    = "pandaystorages"
    container_access_type = "private"
  }
}