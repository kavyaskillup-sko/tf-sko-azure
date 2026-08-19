variable "env" {
  description = "Environment name (dev, prod, etc.)"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where VM will be created"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "nic_id" {
  description = "ID of the network interface to attach to the VM"
  type        = string
}

variable "ssh_public_key" {
  description = "Path to the SSH public key file"
  type        = string
}
