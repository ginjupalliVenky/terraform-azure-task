variable "rg_name" {
  type        = string
  description = "The name of the existing resource group"
}

variable "storageaccount_name" {
  type        = string
  description = "The name of the storage account"
}

variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
}

variable "subnet1_name" {
  type        = string
  description = "The name of the first subnet"
}

variable "subnet2_name" {
  type        = string
  description = "The name of the second subnet"
}

variable "student_email" {
  type        = string
  description = "The email of the student creating the resources"
}
