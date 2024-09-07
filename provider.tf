variable "region" {
  default = "ap-toyko-1"
}

variable "user" {}
variable "fingerprint" {}
variable "tenancy" {}
variable "key_file" {}

terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "6.9.0"
    }
  }
}

provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy
  user_ocid        = var.user
  fingerprint      = var.fingerprint
  private_key_path = var.key_file
}
