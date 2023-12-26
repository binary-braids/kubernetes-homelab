variable "vswitch_name" {
  description = "The name of the vSwitch"
  type        = string
}

variable "uplink_name" {
  description = "The name of the vSwitch uplink"
  type        = string
}

variable "port_group_name" {
  description = "The name of the Port Group"
  type        = string
}

variable "port_group_vlan" {
  description = "The VLAN ID for the Port Group"
  type        = number
}