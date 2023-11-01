output "external_ip_addresses_app" {
  value = {
    for instance_name, instance in yandex_compute_instance.app : instance_name => instance.network_interface[0].nat_ip_address
  }
}

output "internal_ip_addresses_app" {
  value = {
    for instance_name, instance in yandex_compute_instance.app : instance_name => instance.network_interface[0].ip_address
  }
}
