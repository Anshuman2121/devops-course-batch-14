resource "azurerm_network_interface_security_group_association" "association" {
  for_each                  = var.association_map
  network_interface_id      = each.value.network_interface_id
  network_security_group_id = each.value.network_security_group_id
}