resource "oci_core_instance" "this" {
  compartment_id       = var.compartment_id
  availability_domain  = var.availability_domain
  fault_domain         = var.fault_domain
  display_name         = var.display_name
  shape                = var.shape
  preserve_boot_volume = var.preserve_boot_volume
  agent_config {
    are_all_plugins_disabled = false
    is_management_disabled   = false
    is_monitoring_disabled   = false
  }
  availability_config {
    is_live_migration_preferred = true
    recovery_action             = "RESTORE_INSTANCE"
  }
  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = true
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }
  shape_config {
    baseline_ocpu_utilization = null
    memory_in_gbs             = var.memory_in_gbs
    ocpus                     = var.ocpus
    vcpus                     = var.vcpus
  }

  create_vnic_details {
    subnet_id                 = var.subnet_id
    display_name              = var.display_name
    assign_public_ip          = var.assign_public_ip
    skip_source_dest_check    = true
    private_ip                = var.private_ip
    hostname_label            = var.hostname_label
    assign_private_dns_record = var.assign_private_dns_record
  }

  source_details {
    boot_volume_size_in_gbs = jsonencode(50)
    boot_volume_vpus_per_gb = jsonencode(10)
    is_preserve_boot_volume_enabled = false
    source_id                       = var.image_id
    source_type                     = "image"
    kms_key_id                      = var.kms_key_id
  }

  metadata = {
    ssh_authorized_keys = var.ssh_authorized_keys
  }
}
