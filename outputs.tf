output "FloatingIP-1" {
    value = "${ibm_is_floating_ip.floatingip1.address}"
}
output "FloatingIP-2" {
    value = "${ibm_is_floating_ip.floatingip2.address}"
}
output "LB-Hostname" {
    value = "http://${ibm_is_lb.lb1.hostname}"
}