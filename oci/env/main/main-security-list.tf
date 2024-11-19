resource "oci_core_security_list" "main-security-list" {
  compartment_id = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2021-11-10T01:32:16.204Z"
  }
  display_name  = "Default Security List for vcn-20211110-1031"
  freeform_tags = {}
  vcn_id        = oci_core_vcn.main-vcn.id
  egress_security_rules {
    description      = null
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
    stateless        = false
  }
  ingress_security_rules {
    description = null
    protocol    = jsonencode(1)
    source      = "10.0.0.0/16"
    source_type = "CIDR_BLOCK"
    stateless   = false
    icmp_options {
      code = -1
      type = 3
    }
  }
  ingress_security_rules {
    description = null
    protocol    = jsonencode(1)
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
    icmp_options {
      code = 4
      type = 3
    }
  }
  ingress_security_rules {
    description = null
    protocol    = jsonencode(6)
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
    tcp_options {
      max = 22
      min = 22
    }
  }
  ingress_security_rules {
    description = null
    protocol    = jsonencode(6)
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
    tcp_options {
      max = 443
      min = 443
    }
  }
  ingress_security_rules {
    description = null
    protocol    = jsonencode(6)
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
    tcp_options {
      max = 80
      min = 80
    }
  }
  ingress_security_rules {
    description = null
    protocol    = jsonencode(6)
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = true
    tcp_options {
      max = 4914
      min = 4914
    }
  }
}
