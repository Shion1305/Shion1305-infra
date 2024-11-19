module "test-instance" {
  name           = "test-instance"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
}
