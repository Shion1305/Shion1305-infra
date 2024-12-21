include {
  path = find_in_parent_folders()
}

generate "provider" {
  path      = "_provider.tf"
  if_exists = "overwrite"
  contents = file("../../provider/main/oci.tf")
}
