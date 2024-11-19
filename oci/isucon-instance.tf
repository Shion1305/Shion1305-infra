resource "oci_core_instance" "isucon-1" {
  async                      = null
  availability_domain        = "kbTA:AP-TOKYO-1-AD-1"
  capacity_reservation_id    = null
  cluster_placement_group_id = null
  compartment_id             = oci_identity_compartment.main-compartment.id
  compute_cluster_id         = null
  dedicated_vm_host_id       = null
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2024-11-19T16:09:56.687Z"
  }
  display_name                        = "instance-20241120-0016"
  extended_metadata                   = {}
  fault_domain                        = "FAULT-DOMAIN-1"
  freeform_tags                       = {}
  instance_configuration_id           = null
  ipxe_script                         = null
  is_pv_encryption_in_transit_enabled = null
  metadata = {
    ssh_authorized_keys = var.isucon-ssh-keys
  }
  preserve_boot_volume                    = null
  preserve_data_volumes_created_at_launch = null
  shape                                   = "VM.Standard.A1.Flex"
  state                                   = "RUNNING"
  update_operation_constraint             = null
  agent_config {
    are_all_plugins_disabled = false
    is_management_disabled   = false
    is_monitoring_disabled   = false
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }
  availability_config {
    is_live_migration_preferred = true
    recovery_action             = "RESTORE_INSTANCE"
  }
  create_vnic_details {
    assign_ipv6ip             = false
    assign_private_dns_record = false
    assign_public_ip          = jsonencode(true)
    defined_tags = {
      "Oracle-Tags.CreatedBy" = "default/shion1305@gmail.com"
      "Oracle-Tags.CreatedOn" = "2024-11-19T16:09:56.836Z"
    }
    display_name           = "instance-20241120-0016"
    freeform_tags          = {}
    hostname_label         = "instance-20241120-0016"
    nsg_ids                = []
    private_ip             = "10.0.0.193"
    skip_source_dest_check = false
    subnet_id              = oci_core_subnet.isucon-default.id
    vlan_id                = null
  }
  instance_options {
    are_legacy_imds_endpoints_disabled = false
  }
  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = true
    is_pv_encryption_in_transit_enabled = true
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }
  shape_config {
    baseline_ocpu_utilization = null
    memory_in_gbs             = 6
    ocpus                     = 1
    vcpus                     = 1
  }
  source_details {
    boot_volume_size_in_gbs         = jsonencode(47)
    boot_volume_vpus_per_gb         = jsonencode(10)
    is_preserve_boot_volume_enabled = false
    kms_key_id                      = null
    source_id                       = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaaboz4eqdgjyzpzu55b3wgxrqpqzonugsja5jhbr6wqewngq3576oa"
    source_type                     = "image"
  }
}
