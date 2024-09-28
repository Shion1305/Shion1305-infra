remote_state {
  backend = "gcs"
  config = {
    bucket  = "shion1305-infra"
    prefix  = "${path_relative_to_include()}"
    location = "asia-northeast1"
  }
  generate = {
    path      = "_backend.tf"
    if_exists = "overwrite"
  }
}
