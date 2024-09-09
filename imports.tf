import {
  id = "ocid1.instance.oc1.ap-tokyo-1.anxhiljrqiqkkcycorgpudpuhdwmmylru5zr4o3iagmg2n62lhuufq7f5wja"
  to = oci_core_instance.instance-2024
}

import {
  id = "ocid1.instance.oc1.ap-tokyo-1.anxhiljrqiqkkcycklw5l5plncwm7nj64rdqpga6zfe67gsn2zzouexqnlwa"
  to = oci_core_instance.instance-2022
}

import {
  id = "ocid1.instance.oc1.ap-tokyo-1.anxhiljrqiqkkcycvitxf4ct2cvw2bpjadulub3eamyg63sgsotbjzs36raq"
  to = oci_core_instance.instance-2021
}

import {
  id = "ocid1.subnet.oc1.ap-tokyo-1.aaaaaaaaneghxjqpturxbnptzpcf44egzgd2gzg3el2oxyum2lj3ygczbkeq"
  to = oci_core_subnet.main-subnet
}

import {
  id = "ocid1.tenancy.oc1..aaaaaaaa57p4zuoumu3dkeasy3zuom3ouhmxwdk3eo3frkdmvtkpc4nvkqdq"
  to = oci_identity_compartment.main-compartment
}
