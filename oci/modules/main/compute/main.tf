resource "oci_core_instance" "this" {
  compartment_id      = var.compartment_id
  availability_domain = var.availability_domain
  fault_domain        = var.fault_domain
  display_name        = var.display_name
  shape               = var.shape

  shape_config {
    ocpus         = var.ocpus
    memory_in_gbs = var.memory_in_gbs
  }

  create_vnic_details {
    hostname_label            = var.hostname_label
    subnet_id                 = var.subnet_id
    assign_public_ip          = var.assign_public_ip
    private_ip                = var.private_ip
    assign_private_dns_record = var.assign_private_dns_record
  }

  metadata = {
    ssh_authorized_keys = var.ssh_authorized_keys
  }
}
