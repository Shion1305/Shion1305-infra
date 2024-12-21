generate "provider" {
  path      = "_version.tf"
  if_exists = "overwrite"
  contents = file("../../../provider/main/version.tf")
}
