resource "oci_core_volume" "k8s-block-volume" {
  compartment_id      = oci_identity_compartment.main-compartment.id
  availability_domain = module.oci_compute_instance-k8s.availability_domain
  display_name        = "k8s-block-volume"
  size_in_gbs         = 50
  vpus_per_gb         = 0

  lifecycle {
    prevent_destroy = true
  }
}

resource "oci_core_volume" "k8s-proxy-block-volume" {
  compartment_id      = oci_identity_compartment.main-compartment.id
  availability_domain = module.oci_compute_instance-k8s-proxy.availability_domain
  display_name        = "k8s-proxy-block-volume"
  size_in_gbs         = 50
  vpus_per_gb         = 0

  lifecycle {
    prevent_destroy = true
  }
}

resource "oci_core_volume_attachment" "k8s-block-volume-attachment" {
  attachment_type = "paravirtualized"
  instance_id     = module.oci_compute_instance-k8s.ocid
  volume_id       = oci_core_volume.k8s-block-volume.id
  display_name    = "k8s-block-volume-attachment"
}

resource "oci_core_volume_attachment" "k8s-proxy-block-volume-attachment" {
  attachment_type = "paravirtualized"
  instance_id     = module.oci_compute_instance-k8s-proxy.ocid
  volume_id       = oci_core_volume.k8s-proxy-block-volume.id
  display_name    = "k8s-proxy-block-volume-attachment"
}
