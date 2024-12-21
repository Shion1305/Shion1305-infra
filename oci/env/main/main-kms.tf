resource "oci_kms_vault" "main" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "main_vault"
  vault_type     = "DEFAULT"
}

resource "oci_kms_key" "main" {
  compartment_id = oci_identity_compartment.main-compartment.id
  display_name   = "main_key"
  key_shape {
    #Required
    algorithm = "AES"
    length    = 32
  }
  auto_key_rotation_details {
    rotation_interval_in_days = 30
  }
  management_endpoint      = oci_kms_vault.main.management_endpoint
  is_auto_rotation_enabled = true
  protection_mode          = "HSM"
}
