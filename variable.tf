variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "myResourceGroup"
}

variable "location" {
  description = "The location where the resources will be created"
  default     = "westeurope"
}

variable "vm_name" {
  description = "The name of the virtual machine"
  default     = "myVM1"
}

variable "admin_username" {
  description = "The admin username for the VM"
  default     = "azureuser"
}

variable "admin_password" {
  description = "The admin password for the VM"
}
