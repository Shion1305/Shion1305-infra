module "private-isu1-1202" {
  name           = "private-isu1-1202"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  user_data      = base64encode(file("../../modules/isucon/instance/cloud-init/private-isu/app.cfg"))
  private_ip = "10.0.0.11"
}

module "private-isu2-1202" {
  name           = "private-isu2-1202"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  private_ip = "10.0.0.12"
}

module "private-isu-bench-1202" {
  name           = "private-isu-bench-1202"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  user_data      = base64encode(file("../../modules/isucon/instance/cloud-init/private-isu/benchmarker.cfg"))
  private_ip = "10.0.0.13"
}
