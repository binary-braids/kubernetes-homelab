# ESXI Host
esxi_hostname = "#{esxi_hostname}#"
esxi_hostport = "#{esxi_hostport}#"
esxi_hostssl  = "#{esxi_hostssl}#"
esxi_username = "#{esxi_username}#"
esxi_password = "#{esxi_password}#"

#K3s Node
k3s_01_guest_name = "#{k3s_01_guest_name}#"
k3s_01_boot_firmware = "efi"
k3s_01_disk_store = "#{k3s_01_disk_store}#"
k3s_01_memsize = 6144
k3s_01_numvcpus = 4
k3s_01_power = "on"
k3s_01_resource_pool_name  = "/"
k3s_01_virthwver = 21
k3s_01_clone_from_vm = "#{k3s_01_clone_from_vm}#"
k3s_01_virtual_network = "VM Network"
k3s_01_nic_type = "vmxnet3"
k3s_01_notes = "k3s Node"

#K3s Node
k3s_03_guest_name = "#{k3s_03_guest_name}#"
k3s_03_boot_firmware = "efi"
k3s_03_disk_store = "#{k3s_03_disk_store}#"
k3s_03_memsize = 6144
k3s_03_numvcpus = 4
k3s_03_power = "on"
k3s_03_resource_pool_name  = "/"
k3s_03_virthwver = 21
k3s_03_clone_from_vm = "#{k3s_03_clone_from_vm}#"
k3s_03_virtual_network = "VM Network"
k3s_03_nic_type = "vmxnet3"
k3s_03_notes = "k3s Node"