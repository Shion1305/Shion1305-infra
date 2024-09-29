generate "versions" {
  path      = "_versions.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
    terraform {
      required_providers {
        google = {
          source  = "hashicorp/google"
          version = "6.4.0"
        }
      }
    }
  EOF
}
