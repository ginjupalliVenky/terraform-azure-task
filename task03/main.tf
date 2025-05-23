provider "azurerm" {
  features {}
}

# Import the existing Resource Group
data "azurerm_resource_group" "existing" {
  name = var.rg_name
}

# Storage Account Resource
resource "azurerm_storage_account" "sa" {
  name                     = var.storageaccount_name
  resource_group_name      = data.azurerm_resource_group.existing.name
  location                 = data.azurerm_resource_group.existing.location
  account_tier             = "Standard" # Use "Standard" instead of "Basic"
  account_replication_type = "LRS"      # This is fine for standard accounts

  tags = {
    Creator = var.student_email
  }
}



# Virtual Network Resource
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = data.azurerm_resource_group.existing.location
  resource_group_name = data.azurerm_resource_group.existing.name
  address_space       = ["10.0.0.0/16"]

  tags = {
    Creator = var.student_email
  }
}


# First Subnet Resource (Frontend)
resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1_name
  resource_group_name  = data.azurerm_resource_group.existing.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Second Subnet Resource (Backend)
resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2_name
  resource_group_name  = data.azurerm_resource_group.existing.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
