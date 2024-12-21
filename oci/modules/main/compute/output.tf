output "instance_public_ip" {
  value       = ""
  description = "The public IP address of the EC2 instance"
}

output "instance_ocid" {
  description = "The OCID of the created instance"
  value       = oci_core_instance.this.id
}

output "instance_private_ip" {
  value       = oci_core_instance.this.private_ip
  description = "The private IP address of the EC2 instance"
}

output "instance_hostname" {
  value       = oci_core_instance.this.create_vnic_details.hostname_label
  description = "The DNS name of the EC2 instance"
}
