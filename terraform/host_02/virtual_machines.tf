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


