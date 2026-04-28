variable "azure" {
  type = object({
    rg                       = string
    location                 = string
    storage                  = string
    access_tier              = string
    account_replication_type = string
    container                = string
    container_access_type    = string
  })
  default = {
    rg                       = "harsh"
    location                 = "central india"
    storage                  = "harshhaveguts"
    access_tier              = "Standard"
    account_replication_type = "LRS"
    container                = "real"
    container_access_type    = "private"
  }
}

