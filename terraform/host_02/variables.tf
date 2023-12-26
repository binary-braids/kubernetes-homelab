# ESXI Host Variables
variable "esxi_hostname" {
  type        = string
  description = "hostname for ESXI host"
}

variable "esxi_hostport" {
  type        = string
  description = "SSH port for ESXI host"
}

variable "esxi_hostssl" {
  type        = string
  description = "SSL port for ESXI host"
}

variable "esxi_username" {
  type        = string
  description = "username for ESXI host"
}

variable "esxi_password" {
  type        = string
  description = "password for ESXI host"
}


