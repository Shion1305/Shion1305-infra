variable "compartment_id" {
  type        = string
  description = "The OCID of the compartment in which to create the instance."
}

variable "availability_domain" {
  type        = string
  description = "Availability Domain in which to launch the instance."
  default     = "kbTA:AP-TOKYO-1-AD-1"
}

variable "fault_domain" {
  type        = string
  description = "Fault domain in which to launch the instance."
  default     = "FAULT-DOMAIN-1"
}

variable "display_name" {
  type        = string
  description = "Display name of the instance."
  default     = "instance-20220818-0447"
}

variable "ssh_authorized_keys" {
  type        = string
  description = "Public SSH authorized keys for the instance."
}

variable "shape" {
  type        = string
  description = "Shape of the instance."
  default     = "VM.Standard.A1.Flex"
}

variable "ocpus" {
  type        = number
  description = "Number of OCPUs for the instance shape_config."
  default     = 1
}

variable "memory_in_gbs" {
  type        = number
  description = "Amount of memory in GB for the instance shape_config."
  default     = 6
}

variable "subnet_id" {
  type        = string
  description = "The OCID of the subnet in which to create the VNIC."
}

variable "private_ip" {
  type        = string
  description = "Specifically assign a private IP to the instance."
  default     = "10.0.0.34"
}

variable "assign_public_ip" {
  type        = bool
  description = "Whether to assign a public IP to the instance."
  default     = true
}

variable "assign_private_dns_record" {
  type        = bool
  description = "Whether to assign a private DNS record to the instance."
  default     = true
}
