variable "location" {
  type        = string
  description = "Azure region to deploy resources"
}

variable "vm_size" {
  type        = string
  description = "Size of the VM"
}

variable "environment_tag" {
  type        = string
  description = "Environment tag (dev/uat/prod)"
}

variable "admin_username" {
  type        = string
  description = "Admin username for VM"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key for VM login"
}
variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_size" {
  description = "VM size"
  type        = string
}
variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_size" {
  description = "VM size"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone within the region"
  type        = string
  default     = null
}
