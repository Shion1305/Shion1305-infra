resource "oci_core_network_security_group" "k8s-nsg" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "K8s Network Security Group - No Restrictions"
  vcn_id         = oci_core_vcn.main-vcn.id
}

# Allow all outbound traffic
resource "oci_core_network_security_group_security_rule" "k8s-nsg-egress-rule" {
  network_security_group_id = oci_core_network_security_group.k8s-nsg.id
  direction                 = "EGRESS"
  protocol                  = "all"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
}

# Allow all inbound traffic
resource "oci_core_network_security_group_security_rule" "k8s-nsg-ingress-rule" {
  network_security_group_id = oci_core_network_security_group.k8s-nsg.id
  direction                 = "INGRESS"
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
}