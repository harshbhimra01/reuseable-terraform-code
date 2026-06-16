output "stg-ids" {
  value = { for key, stg in azurermazurerm_storage_account.stg : key => stg.id }
}