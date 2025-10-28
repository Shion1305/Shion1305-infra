# resource "oci_core_instance" "instance-2022" {
#   async                      = null
#   availability_domain        = "kbTA:AP-TOKYO-1-AD-1"
#   capacity_reservation_id    = null
#   cluster_placement_group_id = null
#   compartment_id             = oci_identity_compartment.main-compartment.id
#   compute_cluster_id         = null
#   dedicated_vm_host_id       = null
#   defined_tags = {
#     "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/shion1305@gmail.com"
#     "Oracle-Tags.CreatedOn" = "2022-08-17T19:55:11.945Z"
#   }
#   display_name                        = "instance-20220818-0447"
#   extended_metadata                   = {}
#   fault_domain                        = "FAULT-DOMAIN-1"
#   freeform_tags                       = {}
#   instance_configuration_id           = null
#   ipxe_script                         = null
#   is_pv_encryption_in_transit_enabled = null
#   metadata = {
#     ssh_authorized_keys = var.ssh_keys
#   }
#   preserve_boot_volume                    = null
#   preserve_data_volumes_created_at_launch = null
#   shape                                   = "VM.Standard.A1.Flex"
#   state                                   = "RUNNING"
#   update_operation_constraint             = null
#   agent_config {
#     are_all_plugins_disabled = false
#     is_management_disabled   = false
#     is_monitoring_disabled   = false
#     plugins_config {
#       desired_state = "ENABLED"
#       name          = "Vulnerability Scanning"
#     }
#     plugins_config {
#       desired_state = "ENABLED"
#       name          = "Oracle Java Management Service"
#     }
#     plugins_config {
#       desired_state = "ENABLED"
#       name          = "OS Management Service Agent"
#     }
#     plugins_config {
#       desired_state = "ENABLED"
#       name          = "Compute Instance Run Command"
#     }
#     plugins_config {
#       desired_state = "ENABLED"
#       name          = "Compute Instance Monitoring"
#     }
#     plugins_config {
#       desired_state = "DISABLED"
#       name          = "Block Volume Management"
#     }
#     plugins_config {
#       desired_state = "DISABLED"
#       name          = "Bastion"
#     }
#     plugins_config {
#       desired_state = "ENABLED"
#       name          = "Compute RDMA GPU Monitoring"
#     }
#     plugins_config {
#       desired_state = "DISABLED"
#       name          = "Compute HPC RDMA Auto-Configuration"
#     }
#   }
#   availability_config {
#     is_live_migration_preferred = false
#     recovery_action             = "RESTORE_INSTANCE"
#   }
#   create_vnic_details {
#     assign_ipv6ip             = false
#     assign_private_dns_record = false
#     assign_public_ip          = jsonencode(true)
#     defined_tags = {
#       "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/shion1305@gmail.com"
#       "Oracle-Tags.CreatedOn" = "2022-08-17T19:55:12.140Z"
#     }
#     display_name           = "instance-20220818-0447"
#     freeform_tags          = {}
#     hostname_label         = "instance-20220818-0447"
#     nsg_ids                = [oci_core_network_security_group.main-nsg.id]
#     private_ip             = "10.0.0.34"
#     skip_source_dest_check = false
#     subnet_id              = oci_core_subnet.main-subnet.id
#     vlan_id                = null
#   }
#   instance_options {
#     are_legacy_imds_endpoints_disabled = false
#   }
#   launch_options {
#     boot_volume_type                    = "PARAVIRTUALIZED"
#     firmware                            = "UEFI_64"
#     is_consistent_volume_naming_enabled = true
#     is_pv_encryption_in_transit_enabled = true
#     network_type                        = "PARAVIRTUALIZED"
#     remote_data_volume_type             = "PARAVIRTUALIZED"
#   }
#   shape_config {
#     baseline_ocpu_utilization = null
#     memory_in_gbs             = 6
#     nvmes                     = 0
#     ocpus                     = 1
#     vcpus                     = 1
#   }
# }
