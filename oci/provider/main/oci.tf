variable "oci_region" {
  default = "ap-toyko-1"
}

variable "oci_user" {}
variable "oci_fingerprint" {}
variable "oci_tenancy" {}
variable "oci_private_key_path" {}

provider "oci" {
  region           = var.oci_region
  tenancy_ocid     = var.oci_tenancy
  user_ocid        = var.oci_user
  fingerprint      = var.oci_fingerprint
  private_key_path = var.oci_private_key_path
}
