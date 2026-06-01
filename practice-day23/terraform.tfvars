rg_map = {
  rg0 = {
    name     = "tanjiro"
    location = "central india"
  }
  rg1 = {
    name     = "nezuko"
    location = "east us"
  }
  rg2 = {
    name     = "zenitsu"
    location = "south india"
  }
  rg3 = {
    name     = "yoichi"
    location = "west us"
  }
}
stg_map = {
  stg0 = {
    name                            = "tanjirostg"
    location                        = "central india"
    rg_reference                    = "rg0"
    account_tier                    = "Standard"
    account_replication_type        = "LRS"
    allow_nested_items_to_be_public = "true"
  }
  stg1 = {
    name                            = "nezukostg"
    location                        = "east us"
    rg_reference                    = "rg1"
    account_tier                    = "Standard"
    account_replication_type        = "ZRS"
    allow_nested_items_to_be_public = "true"
  }
  stg2 = {
    name                            = "zenitsustg"
    location                        = "south india"
    rg_reference                    = "rg2"
    account_tier                    = "Standard"
    account_replication_type        = "GRS"
    allow_nested_items_to_be_public = "true"
  }
  stg3 = {
    name                            = "yoichistg"
    location                        = "west us"
    rg_reference                    = "rg3"
    account_tier                    = "Standard"
    account_replication_type        = "GRS"
    allow_nested_items_to_be_public = "true"
  }
}
cn_map = {
  cn0 = {
    name                  = "tanjirocn"
    stg_reference         = "stg0"
    container_access_type = "blob"
  }
  cn1 = {
    name                  = "nezukocn"
    stg_reference         = "stg1"
    container_access_type = "blob"
  }
  cn2 = {
    name                  = "zenitsucn"
    stg_reference         = "stg2"
    container_access_type = "blob"
  }
  cn3 = {
    name                  = "yoichicn"
    stg_reference         = "stg3"
    container_access_type = "blob"
  }
}
blob_map = {
  blob0 = {
    name          = "tanjiroblob"
    content_type  = "html"
    stg_reference = "stg0"
    cn_reference  = "cn0"
    type          = "Block"
    source        = "/home/harsh/devops-insiders/portfolio/index.html"
  }
  blob1 = {
    name          = "nezukoblob"
    content_type  = "html"
    stg_reference = "stg1"
    cn_reference  = "cn1"
    type          = "Block"
    source        = "/home/harsh/devops-insiders/portfolio/deepseek/index.html"
  }
  blob2 = {
    name          = "zenitsublob"
    stg_reference = "stg2"
    cn_reference  = "cn2"
    type          = "Block"
    source        = "/home/harsh/devops-insiders/portfolio/claude/files.zip"
  }
  blob3 = {
    name          = "yoichiblob"
    content_type  = "html"
    stg_reference = "stg3"
    cn_reference  = "cn3"
    type          = "Block"
    source        = "/home/harsh/devops-insiders/devops/index.html"
  }
}