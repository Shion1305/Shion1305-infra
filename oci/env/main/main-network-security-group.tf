resource "oci_core_network_security_group" "main-nsg" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "Main Network Security Group"
  vcn_id         = oci_core_vcn.main-vcn.id
}

# Allow all outbound traffic
resource "oci_core_network_security_group_security_rule" "main-nsg-egress-rule" {
  network_security_group_id = oci_core_network_security_group.main-nsg.id
  direction                 = "EGRESS"
  protocol                  = "all"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
}

# Allow ICMP type 3 from VCN
resource "oci_core_network_security_group_security_rule" "main-nsg-ingress-icmp-vcn" {
  network_security_group_id = oci_core_network_security_group.main-nsg.id
  direction                 = "INGRESS"
  protocol                  = "1" # ICMP
  source                    = "10.0.0.0/16"
  source_type               = "CIDR_BLOCK"
  
  icmp_options {
    type = 3
    code = -1
  }
}

# Allow ICMP type 3, code 4 from anywhere
resource "oci_core_network_security_group_security_rule" "main-nsg-ingress-icmp-anywhere" {
  network_security_group_id = oci_core_network_security_group.main-nsg.id
  direction                 = "INGRESS"
  protocol                  = "1" # ICMP
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  
  icmp_options {
    type = 3
    code = 4
  }
}

# Allow SSH (port 22) from anywhere
resource "oci_core_network_security_group_security_rule" "main-nsg-ingress-ssh" {
  network_security_group_id = oci_core_network_security_group.main-nsg.id
  direction                 = "INGRESS"
  protocol                  = "6" # TCP
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  
  tcp_options {
    destination_port_range {
      min = 22
      max = 22
    }
  }
}