# Virtual Machines

## Domain Controller
resource "esxi_guest" "dc02" {
  guest_name          = var.dc02_guest_name
  boot_firmware       = var.dc02_boot_firmware
  disk_store          = var.dc02_disk_store
  memsize             = var.dc02_memsize
  numvcpus            = var.dc02_numvcpus
  power               = var.dc02_power
  resource_pool_name  = var.dc02_resource_pool_name
  virthwver           = var.dc02_virthwver


  network_interfaces {
    virtual_network     = var.dc02_virtual_network
    nic_type            = var.dc02_nic_type
  }

  notes               = var.dc02_notes
}

## Certificate Server
resource "esxi_guest" "ca" {
  guest_name          = var.ca_guest_name
  boot_firmware       = var.ca_boot_firmware
  disk_store          = var.ca_disk_store
  memsize             = var.ca_memsize
  numvcpus            = var.ca_numvcpus
  power               = var.ca_power
  resource_pool_name  = var.ca_resource_pool_name
  virthwver           = var.ca_virthwver


  network_interfaces {
    virtual_network     = var.ca_virtual_network
    nic_type            = var.ca_nic_type
  }

  notes               = var.ca_notes
}

## K3s Node
resource "esxi_guest" "k3s02" {
  guest_name          = var.k3s02_guest_name
  boot_firmware       = var.k3s02_boot_firmware
  disk_store          = var.k3s02_disk_store
  memsize             = var.k3s02_memsize
  numvcpus            = var.k3s02_numvcpus
  power               = var.k3s02_power
  resource_pool_name  = var.k3s02_resource_pool_name
  virthwver           = var.k3s02_virthwver


  network_interfaces {
    virtual_network     = var.k3s02_virtual_network
    nic_type            = var.k3s02_nic_type
  }

  notes               = var.k3s02_notes
}

## K3s Node

resource "esxi_guest" "k3s_02" {
  guest_name          = var.k3s_02_guest_name
  boot_firmware       = var.k3s_02_boot_firmware
  disk_store          = var.k3s_02_disk_store
  memsize             = var.k3s_02_memsize
  numvcpus            = var.k3s_02_numvcpus
  power               = var.k3s_02_power
  resource_pool_name  = var.k3s_02_resource_pool_name
  virthwver           = var.k3s_02_virthwver
  clone_from_vm       = var.k3s_02_clone_from_vm

  network_interfaces {
    virtual_network     = var.k3s_02_virtual_network
    nic_type            = var.k3s_02_nic_type
  }

  guestinfo = {
    "metadata.encoding" = "base64"
    "metadata" = base64encode(file("./cloud-init/k3s_02_metadata.yaml"))
  }

  notes               = var.k3s_02_notes
}

# Ansible Server
resource "esxi_guest" "ansible" {
  guest_name          = var.ansible_guest_name
  boot_firmware       = var.ansible_boot_firmware
  disk_store          = var.ansible_disk_store
  memsize             = var.ansible_memsize
  numvcpus            = var.ansible_numvcpus
  power               = var.ansible_power
  resource_pool_name  = var.ansible_resource_pool_name
  virthwver           = var.ansible_virthwver


  network_interfaces {
    virtual_network     = var.ansible_virtual_network
    nic_type            = var.ansible_nic_type
  }

  notes               = var.ansible_notes
}


