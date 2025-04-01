output "rg_id" {
  description = "The ID of the existing Resource Group"
  value       = data.azurerm_resource_group.existing.id
}

output "sa_blob_endpoint" {
  description = "The blob service primary endpoint of the storage account"
  value       = azurerm_storage_account.sa.primary_blob_endpoint
}

output "vnet_id" {
  description = "The ID of the created Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}
