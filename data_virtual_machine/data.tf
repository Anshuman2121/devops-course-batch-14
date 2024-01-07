data "azurerm_key_vault" "keyvault" {
  name                = "locker7jan"
  resource_group_name = "class7jan"
}

data "azurerm_key_vault_secret" "username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "password" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_network_interface" "niccard" {
  name                = "frontendvm-nic"
  resource_group_name = "devopsinsiders-rg1"
}


//data.azurerm_key_vault_secret.username.value