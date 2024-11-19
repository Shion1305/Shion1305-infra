resource "oci_core_vcn" "isucon-vcn" {
  cidr_block     = "10.0.0.0/16"
  cidr_blocks    = ["10.0.0.0/16"]
  compartment_id = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2024-11-19T15:39:01.718Z"
  }
  display_name                     = "isucon"
  dns_label                        = "isucon"
  freeform_tags                    = {}
  ipv6private_cidr_blocks          = []
  is_ipv6enabled                   = false
  is_oracle_gua_allocation_enabled = null
}


resource "oci_core_security_list" "isucon-security-list" {
  compartment_id = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2024-11-19T15:39:01.718Z"
  }
  display_name  = "Default Security List for isucon"
  freeform_tags = {}
  vcn_id        = oci_core_vcn.isucon-vcn.id
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
}

resource "oci_core_subnet" "isucon-default" {
  availability_domain = "kbTA:AP-TOKYO-1-AD-1"
  cidr_block          = "10.0.0.0/24"
  compartment_id      = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2024-11-19T15:57:33.852Z"
  }
  dhcp_options_id            = "ocid1.dhcpoptions.oc1.ap-tokyo-1.aaaaaaaaaqf45lzojooys4r4macjwhrlwyiqh7dtve5gky3eyy3scehehxwa"
  display_name               = "default"
  dns_label                  = "default"
  freeform_tags              = {}
  ipv6cidr_block             = null
  ipv6cidr_blocks            = []
  prohibit_internet_ingress  = false
  prohibit_public_ip_on_vnic = false
  route_table_id             = oci_core_route_table.isucon-routing-table.id
  security_list_ids          = [oci_core_security_list.isucon-security-list.id]
  vcn_id                     = oci_core_vcn.isucon-vcn.id
}

resource "oci_core_route_table" "isucon-routing-table" {
  compartment_id = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2024-11-19T15:39:01.718Z"
  }
  display_name  = "Default Route Table for isucon"
  freeform_tags = {}
  vcn_id        = oci_core_vcn.isucon-vcn.id
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.isucon-internet-gateway.id
  }
}
