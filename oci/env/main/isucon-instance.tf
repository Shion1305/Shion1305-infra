module "private-isu" {
  name           = "private-isu"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  user_data      = base64encode(file("../../modules/isucon/instance/cloud-init/private-isu/app.cfg"))
}

module "private-isu2" {
  name           = "isucon10q-updated"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
}

module "private-isu-bench" {
  name           = "isucon11q"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  user_data      = base64encode(file("../../modules/isucon/instance/cloud-init/private-isu/benchmarker.cfg"))
}
