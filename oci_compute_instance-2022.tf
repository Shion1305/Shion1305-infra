resource "oci_core_instance" "instance-2022" {
  async                      = null
  availability_domain        = "kbTA:AP-TOKYO-1-AD-1"
  capacity_reservation_id    = null
  cluster_placement_group_id = null
  compartment_id             = oci_identity_compartment.main-compartment.id
  compute_cluster_id         = null
  dedicated_vm_host_id       = null
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "oracleidentitycloudservice/shion1305@gmail.com"
    "Oracle-Tags.CreatedOn" = "2022-08-17T19:55:11.945Z"
  }
  display_name                        = "instance-20220818-0447"
  extended_metadata                   = {}
  fault_domain                        = "FAULT-DOMAIN-1"
  freeform_tags                       = {}
  instance_configuration_id           = null
  ipxe_script                         = null
  is_pv_encryption_in_transit_enabled = null
  metadata = {
    ssh_authorized_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAEAQDAR5lLWfcv3R351aosBQo/SDAN+VEXYrrxedgGBBJSwaYFKJ1/IX/+dXKUL+NPPL56MJtFSzLCBIsJj5dMzahGHvCtbo5JIpOPKGagHpAo4e7JvSFRUV1jMvW6TI6S09xch8cNNMK32tPVhptV9L9J63XZz3WnH9ApW7jZiBlboOzC2sYLBfcIMVW1a4Sp5CN0ACrjOv//xx4gNHX6QCYCF19xlAeosRSqGrI/av8pohOMCSF7XI6U60YaDsRLPNrzMEParcad7ZygVpMI1SmP39U+7aCbHZJF7rMpckJVKH7tjZsZXOjl0AGXQDURptHsPOg9tWDZpflzYZRDT9juYIZc86jtE38ySsBos4jPWkTuz8ltSkqyeDOyvjExj9dC4i0RT/rgLgKmOQwvQrTfJ4LdLFV846ThACW6c8CISazBorskju7xF1bAKTGfhm3duV90xiuPl+XZpaf3JXaafvqCGX9hJ4GnRx6Xcu930PwN5jEPWgx1y/gpWPFBJQkNKaVpt8d2Tdzgubl1g9zY0w5Sta4/XhyZKBwZpJsMl92bghvd+WGDu0+q/6od7SC9ZPFZEpZWuE42Voswhi0AB2v+BqY8vQ2fxZA1faN6VpZQddetPOVqqwvmcGiD4USlqBadJK6AE1pGbUcfQqnmY/clGW76ZXMzOHnPzTXfAO9S+q9PtRmBB7JvbkzORAjiYwcYy+2DEwfedue+gPhRCSp0kcANESJxTwG3NN2PrUQ31Ttc1Yce5GqukTmVTN+iLAeU8cfZD2YNa5Kh6dwRN2Ej96SX6SpHzS5P/kULoNxATSooUA2pOJseH2vLcPWZw3fu5NXPypJ9HOkm6owYUINgInh1li08O2bphQgwiHfqn3VINKjWYYde8FQXEm1PX1vzlHGbuukIA26Pjh+IVAm7PgLTUpCle09m2aFOvzcdPfYHCg5p//SFTjssrRqnXJEbfppBTKXh39JNquoXI+1Yavzk6rt4Lsq7va+WrAzNlAa5l5fAoyrcSHeZT1w2mK/KO8AaZvMTclgyVov4fsMgvnpO6eWGlJM8qjllHY268UslFurck9RFMlI1dbEabn5zfJkyHj+o297m5BxTmOlg/J2JBg5zwPAh2dIJklL7uHu5ENi/dXd8gHVS48VyP0TcWmhAHDJtwMlw6mPIZp7kgi69WgcAb1RYEWOY1OxclZgJxb9v/fDiLQvLXCjKlB/05oUEmy3ZoHU5ah8CoLr14UKyYWOFzJhQKz/whFinl5xvw8XCf3wsw8zKa6qj30Oc9UfQNDkQa/HaJZTric7Utvx1mgXzm8rNDDGC63WE/ZZoG/bP3fojwP6r4wmNb1D79cwNHybrmD8V3PjL shionichikawa@ShionnoMacBook-Pro.local"
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
      name          = "Oracle Java Management Service"
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
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
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
      "Oracle-Tags.CreatedOn" = "2022-08-17T19:55:12.140Z"
    }
    display_name           = "instance-20220818-0447"
    freeform_tags          = {}
    hostname_label         = "instance-20220818-0447"
    nsg_ids                = []
    private_ip             = "10.0.0.34"
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
    source_id                       = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaabsnsdq7xvxnpxais4tyltgmph2js26t6decx24vtob7gsbq5xxea"
    source_type                     = "image"
  }
}
