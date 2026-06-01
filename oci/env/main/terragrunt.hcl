include {
  path = find_in_parent_folders()
}

# Terragrunt v1.0+ always runs units from a copied .terragrunt-cache sandbox.
# Root the copy at `oci/` (the common ancestor of this unit and ../../modules)
# so the local module source "../../modules/main/compute" resolves inside the
# cache. This keeps the .tf module paths correct for IDEs/linters.
terraform {
  source            = "../..//env/main"
  exclude_from_copy = [".terragrunt-cache", ".terraform"]
}

generate "provider" {
  path      = "_provider.tf"
  if_exists = "overwrite"
  contents  = file("../../provider/main/oci.tf")
}

generate "version" {
  path      = "_version.tf"
  if_exists = "overwrite"
  contents  = file("../../provider/main/version.tf")
}
