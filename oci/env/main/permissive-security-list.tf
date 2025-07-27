resource "oci_core_security_list" "permissive-security-list" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name = "Security List - Allow All"
  freeform_tags = {}
  vcn_id       = oci_core_vcn.main-vcn.id
  
  # Allow all outbound traffic
  egress_security_rules {
    description      = null
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
    stateless        = false
  }
  
  # Allow all inbound traffic
  ingress_security_rules {
    description = null
    protocol    = "all"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
  }
}
