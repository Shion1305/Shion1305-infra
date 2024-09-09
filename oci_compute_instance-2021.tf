# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ocid1.instance.oc1.ap-tokyo-1.anxhiljrqiqkkcycvitxf4ct2cvw2bpjadulub3eamyg63sgsotbjzs36raq"
resource "oci_core_instance" "instance-2021" {
  async                      = null
  availability_domain        = "kbTA:AP-TOKYO-1-AD-1"
  capacity_reservation_id    = null
  cluster_placement_group_id = null
  compartment_id             = oci_identity_compartment.main-compartment.id
  compute_cluster_id         = null
  dedicated_vm_host_id       = null
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2021-11-11T05:54:25.228Z"
  }
  display_name                        = "instance-20211111-1451"
  extended_metadata                   = {}
  fault_domain                        = "FAULT-DOMAIN-3"
  freeform_tags                       = {}
  instance_configuration_id           = null
  ipxe_script                         = null
  is_pv_encryption_in_transit_enabled = null
  metadata = {
    ssh_authorized_keys = "ssh-rsa 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 shion1305@gmail.com"
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
      desired_state = "ENABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "OS Management Service Agent"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Oracle Java Management Service"
    }
  }
  availability_config {
    is_live_migration_preferred = false
    recovery_action             = "RESTORE_INSTANCE"
  }
  create_vnic_details {
    assign_ipv6ip             = false
    assign_private_dns_record = false
    assign_public_ip          = jsonencode(true)
    defined_tags = {
      "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/shion1305@gmail.com"
      "Oracle-Tags.CreatedOn" = "2021-11-11T05:54:25.392Z"
    }
    display_name           = "instance-20211111-1451"
    freeform_tags          = {}
    hostname_label         = "instance-20211111-1451"
    nsg_ids                = []
    private_ip             = "10.0.0.24"
    skip_source_dest_check = false
    subnet_id              = oci_core_subnet.main-subnet.id
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
    nvmes                     = 0
    ocpus                     = 1
    vcpus                     = 1
  }
  source_details {
    boot_volume_size_in_gbs         = jsonencode(47)
    boot_volume_vpus_per_gb         = jsonencode(10)
    is_preserve_boot_volume_enabled = false
    kms_key_id                      = null
    source_id                       = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaasoxnuvs6qg74dnagypr6jtmvpcxaz44ib4x5iqwvnjr7hh2lghia"
    source_type                     = "image"
  }
}
