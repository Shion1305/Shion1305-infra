resource "oci_core_subnet" "main-subnet" {
  availability_domain = null
  cidr_block          = "10.0.0.0/24"
  compartment_id      = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2021-11-10T01:32:17.816Z"
  }
  dhcp_options_id            = "ocid1.dhcpoptions.oc1.ap-tokyo-1.aaaaaaaavdzkksyupctnoqbj2hpo6w63vxtgx227o7hv52kl4nru6bcjvfwa"
  display_name               = "subnet-20211110-1031"
  dns_label                  = "subnet11101032"
  freeform_tags              = {}
  ipv6cidr_block             = null
  ipv6cidr_blocks            = []
  prohibit_internet_ingress  = false
  prohibit_public_ip_on_vnic = false
  route_table_id             = oci_core_route_table.main-route-table.id
  security_list_ids          = [oci_core_security_list.main-security-list.id]
  vcn_id                     = "ocid1.vcn.oc1.ap-tokyo-1.amaaaaaaqiqkkcyavaoppezgphkllmrizfar3ycecg7phwvws4ceipafbdra"
}
