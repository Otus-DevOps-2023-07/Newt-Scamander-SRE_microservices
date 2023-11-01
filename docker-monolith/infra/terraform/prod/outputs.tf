
# # uncomment only for configuration with loadbalancer
# output "external_lb_ip_address" {
#   value = yandex_lb_network_load_balancer.yc-balancer.listener.*.external_address_spec[0].*.address
# }


output "current_time" {
  value = time_static.example.rfc3339
}
