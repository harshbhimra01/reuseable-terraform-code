output "blob_url" {
  value = { for k, v in azurerm_storage_blob.blob :
    k => v.url
  }
}