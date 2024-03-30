## K3s Node
resource "esxi_guest" "k3s_01" {
  guest_name          = var.k3s_01_guest_name
  boot_firmware       = var.k3s_01_boot_firmware
  disk_store          = var.k3s_01_disk_store
  memsize             = var.k3s_01_memsize
  numvcpus            = var.k3s_01_numvcpus
  power               = var.k3s_01_power
  resource_pool_name  = var.k3s_01_resource_pool_name
  virthwver           = var.k3s_01_virthwver
  clone_from_vm       = var.k3s_01_clone_from_vm


  network_interfaces {
    virtual_network     = var.k3s_01_virtual_network
    nic_type            = var.k3s_01_nic_type
  }

  guestinfo = {
    "metadata" = base64encode(file("./cloud-init/k3s_01_metadata.yaml"))
    "metadata.encoding" = "base64"
  }

  notes               = var.k3s_01_notes
}

## K3s Node
resource "esxi_guest" "k3s_03" {
  guest_name          = var.k3s_03_guest_name
  boot_firmware       = var.k3s_03_boot_firmware
  disk_store          = var.k3s_03_disk_store
  memsize             = var.k3s_03_memsize
  numvcpus            = var.k3s_03_numvcpus
  power               = var.k3s_03_power
  resource_pool_name  = var.k3s_03_resource_pool_name
  virthwver           = var.k3s_03_virthwver
  clone_from_vm       = var.k3s_03_clone_from_vm


  network_interfaces {
    virtual_network     = var.k3s_03_virtual_network
    nic_type            = var.k3s_03_nic_type
  }

  guestinfo = {
    "metadata" = base64encode(file("./cloud-init/k3s_03_metadata.yaml"))
    "metadata.encoding" = "base64"
  }

  notes               = var.k3s_03_notes
}


