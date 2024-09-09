resource "oci_core_dhcp_options" "main-dhcp-options" {
  compartment_id = oci_identity_compartment.main-compartment.id
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2021-11-10T01:32:16.204Z"
  }
  display_name     = "Default DHCP Options for vcn-20211110-1031"
  domain_name_type = "CUSTOM_DOMAIN"
  freeform_tags    = {}
  vcn_id           = oci_core_vcn.main-vcn.id
  options {
    custom_dns_servers  = []
    search_domain_names = ["vcn11101032.oraclevcn.com"]
    server_type         = null
    type                = "SearchDomain"
  }
  options {
    custom_dns_servers  = []
    search_domain_names = []
    server_type         = "VcnLocalPlusInternet"
    type                = "DomainNameServer"
  }
}
