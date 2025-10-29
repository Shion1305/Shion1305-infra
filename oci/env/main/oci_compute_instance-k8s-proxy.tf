module "oci_compute_instance-k8s-proxy" {
  source                    = "../../modules/main/compute"
  subnet_id                 = oci_core_subnet.main-subnet.id
  private_ip                = "10.0.0.21"
  compartment_id            = oci_identity_compartment.main-compartment.id
  ssh_authorized_keys       = var.ssh_keys
  assign_private_dns_record = true
  assign_public_ip          = true
  display_name              = "oci_compute_instance-k8s-proxy"
  ocpus                     = 1
  memory_in_gbs             = 6
  shape                     = "VM.Standard.A1.Flex"
  fault_domain              = "FAULT-DOMAIN-1"
  availability_domain       = "kbTA:AP-TOKYO-1-AD-1"
  hostname_label            = "instance-k8s-proxy"
  image_id                  = data.oci_core_images.ubuntu_latest.images[0].id
  kms_key_id                = null
  preserve_boot_volume      = true
  nsg_ids                   = [oci_core_network_security_group.k8s-nsg.id]
}

data "oci_core_images" "ubuntu_latest" {
  compartment_id = oci_identity_compartment.main-compartment.id
  operating_system = "Canonical Ubuntu"
  operating_system_version = "24.04"
  sort_by = "TIMECREATED"
  sort_order = "DESC"
}
