
resource "azurerm_resource_group" "ball" {
  name     = var.rg
  location = "south india"
}

resource "azurerm_storage_account" "implicit" {
  name                     = var.st
  resource_group_name      = azurerm_resource_group.ball.name
  location                 = azurerm_resource_group.ball.location
  account_tier             = var.tier
  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "container-ac" {
  name                  = var.cn
  storage_account_id    = azurerm_storage_account.implicit.id
  container_access_type = "private"
}

