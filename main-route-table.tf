resource "oci_core_route_table" "main-route-table" {
  compartment_id = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2021-11-10T01:32:16.204Z"
  }
  display_name  = "Default Route Table for vcn-20211110-1031"
  freeform_tags = {}
  vcn_id        = oci_core_vcn.main-vcn.id
  route_rules {
    description       = null
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.main-internet-gateway.id
    route_type        = null
  }
}
