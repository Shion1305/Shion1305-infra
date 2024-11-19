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
  default     = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaaboz4eqdgjyzpzu55b3wgxrqpqzonugsja5jhbr6wqewngq3576oa"
}

variable "ssh_keys" {
  type        = string
  description = "SSH keys"
}