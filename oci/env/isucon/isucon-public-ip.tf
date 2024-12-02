resource "oci_core_public_ip" "isu-1" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "isu-public-ip-1"
  freeform_tags = {}
  lifetime       = "RESERVED"
  private_ip_id  = module.private-isu1-1202.private_ip_id
}

resource "oci_core_public_ip" "isu-2" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "isu-public-ip-2"
  freeform_tags = {}
  lifetime       = "RESERVED"
  private_ip_id  = module.private-isu2-1202.private_ip_id
}

resource "oci_core_public_ip" "isu-3" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "isu-public-ip-3"
  freeform_tags = {}
  lifetime       = "RESERVED"
  private_ip_id  = module.private-isu-bench-1202.private_ip_id
}

