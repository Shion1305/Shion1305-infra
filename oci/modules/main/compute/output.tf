output "public_ip" {
  value       = oci_core_instance.this.public_ip
  description = "The public IP address of the EC2 instance"
}

output "ocid" {
  description = "The OCID of the created instance"
  value       = oci_core_instance.this.id
}

output "private_ip" {
  value       = oci_core_instance.this.private_ip
  description = "The private IP address of the EC2 instance"
}

output "hostname" {
  value       = oci_core_instance.this.create_vnic_details[0].hostname_label
  description = "The DNS name of the EC2 instance"
}
