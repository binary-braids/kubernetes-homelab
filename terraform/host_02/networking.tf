resource "esxi_vswitch" "production" {
  name = var.vswitch_name
  
  uplink {
    name = var.uplink_name
  }
}

resource "esxi_portgroup" "production" {
  name    = var.port_group_name
  vswitch = esxi_vswitch.production.name
  vlan    = var.port_group_vlan
}