resource "oci_core_vcn" "main-vcn" {
  cidr_block     = "10.0.0.0/16"
  cidr_blocks    = ["10.0.0.0/16"]
  compartment_id = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2021-11-10T01:32:16.204Z"
  }
  security_attributes = {
  }
  display_name                     = "vcn-20211110-1031"
  dns_label                        = "vcn11101032"
  freeform_tags                    = {}
  ipv6private_cidr_blocks          = []
  is_ipv6enabled                   = false
  is_oracle_gua_allocation_enabled = null
}
