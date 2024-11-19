module "isucon-1" {
  name           = "isucon-1"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
}

module "isucon-2" {
  name           = "isucon-2"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
}

module "isucon-3" {
  name           = "isucon-3"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
}
