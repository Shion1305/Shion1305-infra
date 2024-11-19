# import {
#   id = "ocid1.instance.oc1.ap-tokyo-1.anxhiljrqiqkkcyczz334sybim34zrcx2gkrqizqaeyryiiygpjgiiizunwa"
#   to = oci_core_instance.isucon-1
# }

import {
  id = "ocid1.vcn.oc1.ap-tokyo-1.amaaaaaaqiqkkcyaaiyxozdvbpbnxhcsjkpuwp4kpwdwxqzrtb5r62afb5yq"
  to = oci_core_vcn.isucon-vcn
}

import {
  id = "ocid1.subnet.oc1.ap-tokyo-1.aaaaaaaag3x5jffggghvabjfuyt7oe65q4jvucooiukwxgv4qhoe5x5c7pka"
  to = oci_core_subnet.isucon-default
}

import {
  id = "ocid1.securitylist.oc1.ap-tokyo-1.aaaaaaaaqja4os3hv5cg225yqr7finn4d4j4wdqjhyjajdxln4psiv43yl5q"
  to = oci_core_security_list.isucon-security-list
}

import {
  id = "ocid1.routetable.oc1.ap-tokyo-1.aaaaaaaasqpv5qbidqr5la7vjkkp373a3xfkd3gaxa2cikza7lxzggdf7s5q"
  to = oci_core_route_table.isucon-routing-table
}
