output "rg_id" {
  description = "The ID of the Resource Group"
  value       = data.azurerm_resource_group.existing.id
}

output "sa_blob_endpoint" {
  description = "The blob service primary endpoint of the Storage Account"
  value       = azurerm_storage_account.sa.primary_blob_endpoint
}

output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}
