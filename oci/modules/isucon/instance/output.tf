output "instance_id" {
  value = oci_core_instance.isucon-instance.id
}

output "private_ip_id" {
  value = lookup(data.oci_core_private_ips.private_ips.private_ips[0], "id")
}
