resource "oci_core_internet_gateway" "isucon-internet-gateway" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "isucon"
  enabled        = true
  freeform_tags  = {}
  route_table_id = null
  vcn_id         = oci_core_vcn.isucon-vcn.id
}
