resource "azurerm_network_security_group" "nsg" {
  for_each            = var.nsg_map
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}
