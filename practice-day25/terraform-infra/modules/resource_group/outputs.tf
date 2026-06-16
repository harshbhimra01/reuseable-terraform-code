output "rg-ids" {
  value = { for key, rg in azurerm_resource_group.rg: key => rg.id }
}