module "isucon13-1203-1" {
  name           = "isucon13-1203-1"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  user_data      = base64encode(file("../../modules/isucon/instance/cloud-init/isucon13.cfg"))
  private_ip = "10.0.0.11"
}

module "isucon13-1203-2" {
  name           = "isucon13-1203-2"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  private_ip = "10.0.0.12"
}

module "isucon13-1203-3" {
  name           = "isucon13-1203-3"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  user_data      = base64encode(file("../../modules/isucon/instance/cloud-init/isucon13.cfg"))
  private_ip = "10.0.0.13"
}
