output "internal_ip_address_vm_1" {
  description = "External IP address vm 1"
  value = module.ya_instance_1.internal_ip_address_vm
}

output "external_ip_address_vm_1" {
  description = "External IP address vm 2"
  value = module.ya_instance_1.external_ip_address_vm
}

output "internal_ip_address_vm_2" {
  description = "Internal IP address vm 1"
  value = module.ya_instance_2.internal_ip_address_vm
}

output "external_ip_address_vm_2" {
  description = "Internal IP address vm 2"
  value = module.ya_instance_2.external_ip_address_vm
}

output "balancer_ip" {
  description = "IP address balancer listeners"
  value = module.ya_balancer.balancer_ip.listener[*].external_address_spec
}