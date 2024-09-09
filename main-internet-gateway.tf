resource "oci_core_internet_gateway" "main-internet-gateway" {
  compartment_id = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2021-11-10T01:32:16.923Z"
  }
  display_name   = "Internet Gateway vcn-20211110-1031"
  enabled        = true
  freeform_tags  = {}
  route_table_id = null
  vcn_id         = oci_core_vcn.main-vcn.id
}
