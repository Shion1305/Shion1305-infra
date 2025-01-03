resource "oci_kms_vault" "main" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "main_vault"
  vault_type     = "DEFAULT"
}

resource "oci_kms_key" "main" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "main_key_aes"
  key_shape {
    #Required
    algorithm = "AES"
    length    = 32
  }
  management_endpoint      = oci_kms_vault.main.management_endpoint
  protection_mode          = "HSM"
}
