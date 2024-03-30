variable "k3s_02_guest_name" {
  description = "The name of the guest VM"
  type        = string
}

variable "k3s_02_memsize" {
  description = "The amount of memory to allocate the guest VM in MB (1024 = 1GB)"
  type        = number
}

variable "k3s_02_boot_firmware" {
  description = "The firmware type for the guest VM"
  type        = string
}

variable "k3s_02_disk_store" {
  description = "The name of the data store where the guest VM will be created"
  type        = string
}

variable "k3s_02_numvcpus" {
  description = "The number of vCPUs to allocate to the guest VM"
  type        = number
}

variable "k3s_02_power" {
  description = "Set the guest VM Power state"
  type = string
}

variable "k3s_02_resource_pool_name" {
  description = "The name of the Resource Pool for the guest VM"
  type = string
}

variable "k3s_02_virthwver" {
  description = "The hardware version of the guest VM"
  type = number
}

variable "k3s_02_clone_from_vm" {
  description = "The source VM to clone"
  type = string
}

variable "k3s_02_virtual_network" {
  description = "The virtual network for the network interface"
  type        = string
}

variable "k3s_02_nic_type" {
  description = "The type for the network interface"
  type        = string
}

variable "k3s_02_notes" {
  description = "Annotated notes to add to the guest VM"
  type        = string
}


