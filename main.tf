# Configure the Azure Provider
provider "azurerm" {
  features {}
}

# Create a Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# Create a Virtual Network
resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  address_space       = [var.vnet_address_space]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

# Create a Subnet
resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = [var.subnet_address_prefix]
}

# Output the Resource Group name
output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

# Output the Virtual Network name
output "vnet_name" {
  value = azurerm_virtual_network.example.name
}

# Output the Subnet name
output "subnet_name" {
  value = azurerm_subnet.example.name
}
