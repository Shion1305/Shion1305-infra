module "isu1" {
  name           = "isucon10q-updated"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  user_data      = base64encode(file("../../modules/isucon/instance/cloud-init/isucon10q.cfg"))
}

module "isu2" {
  name           = "isucon11q"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  user_data      = base64encode(file("../../modules/isucon/instance/cloud-init/isucon11q.cfg"))
}

module "isu3" {
  name           = "private-isu-updated"
  source         = "../../modules/isucon/instance"
  compartment-id = oci_identity_compartment.main-compartment.id
  subnet_id      = oci_core_subnet.isucon-default.id
  ssh_keys       = var.isucon-ssh-keys
  user_data      = base64encode(file("../../modules/isucon/instance/cloud-init/private-isu/app.cfg"))
}
