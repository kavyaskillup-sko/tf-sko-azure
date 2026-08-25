# Outputs for use in other modules or root
output "vm_name" {
  description = "Name of the created VM"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_private_ip" {
  description = "Private IP address of the VM"
  value       = azurerm_network_interface.nic.ip_configuration[0].private_ip_address
}
