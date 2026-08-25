variable "location" {
  type        = string
  description = "Azure region to deploy resources"
}

variable "vm_size" {
  type        = string
  description = "Size of the VM"
}

variable "availability_zone" {
  description = "Availability zone within the region"
  type        = string
  default     = null
}

variable "environment_tag" {
  type        = string
  description = "Environment tag (dev/uat/prod/sit)"
}

variable "admin_username" {
  type        = string
  description = "Admin username for VM"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key for VM login"
}

variable "resource_group" {
  type        = string
  description = "Resource group name"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for NIC"
}
