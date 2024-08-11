# ESXI Host
esxi_hostname = "#{esxi_hostname}#"
esxi_hostport = "#{esxi_hostport}#"
esxi_hostssl  = "#{esxi_hostssl}#"
esxi_username = "#{esxi_username}#"
esxi_password = "#{esxi_password}#"

#K3s Node
k3s_02_guest_name = "#{k3s_02_guest_name}#"
k3s_02_boot_firmware = "efi"
k3s_02_disk_store = "#{k3s_02_disk_store}#"
k3s_02_memsize = 6144
k3s_02_numvcpus = 4
k3s_02_power = "on"
k3s_02_resource_pool_name  = "/"
k3s_02_virthwver = 21
k3s_02_clone_from_vm = "#{k3s_02_clone_from_vm}#"
k3s_02_virtual_network = "VM Network"
k3s_02_nic_type = "vmxnet3"
k3s_02_notes = "k3s Node"