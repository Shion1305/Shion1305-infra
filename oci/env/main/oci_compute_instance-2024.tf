module "oci_compute_instance-2024" {
  source                    = "../../modules/main/compute"
  subnet_id                 = oci_core_subnet.main-subnet.id
  private_ip                = "10.0.0.20"
  compartment_id            = oci_identity_compartment.main-compartment.id
  ssh_authorized_keys       = var.ssh_keys
  assign_private_dns_record = true
  assign_public_ip          = true
  display_name              = "oci_compute_instance-2024-1"
  ocpus                     = 1
  memory_in_gbs             = 6
  shape                     = "VM.Standard.A1.Flex"
  fault_domain              = "FAULT-DOMAIN-1"
  availability_domain       = "kbTA:AP-TOKYO-1-AD-1"
  hostname_label            = "instance-2024-1"
}