variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources should be created"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the Virtual Network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
}

variable "subnet_address_prefix" {
  description = "The address prefix for the Subnet"
  type        = string
  default     = "10.0.1.0/24"
}
