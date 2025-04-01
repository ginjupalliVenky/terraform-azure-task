variable "rg_name" {
  description = "The name of the existing Resource Group"
  type        = string
}

variable "storageaccount_name" {
  description = "The name of the Storage Account"
  type        = string
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "subnet1_name" {
  description = "The name of the first Subnet"
  type        = string
}

variable "subnet2_name" {
  description = "The name of the second Subnet"
  type        = string
}

variable "student_email" {
  description = "The student email (for tagging)"
  type        = string
}
