resource "azurerm_sql_database" "example" {
  for_each = var.dbs
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  server_name         = each.value.server_name
}
