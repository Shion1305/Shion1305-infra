variable "name" {
  type        = string
  description = "Name of the instance"
}

variable "compartment-id" {
  type        = string
  description = "Compartment ID"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

variable "source_id" {
  type        = string
  description = "Source ID"
  default     = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaadcb75lsmgfzxtrirj6l7rb7ecd4ivz7fwzi2py2kk2molifncsia"
}

variable "ssh_keys" {
  type        = string
  description = "SSH keys"
}

variable "user_data" {
  type        = string
  description = "User data or cloud-init"
  default     = null
}

variable "private_ip" {
  type        = string
  description = "Private IP"
  default     = null
}
