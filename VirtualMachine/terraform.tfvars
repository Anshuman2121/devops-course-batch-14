vms = {
  "vm1" = {
    name                  = "frontendvm"
    resource_group_name   = "devopsinsiders-rg1"
    location              = "West Europe"
    size                  = "Standard_DS1_v2"
    admin_username        = "devopsadmin"
    admin_password        = "P@ssw01rd@123"
    network_interface_ids = ["/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/frontendvm-nic"]
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-focal"
      sku       = "20_04-lts"
      version   = "latest"
    }
  }
  "vm2" = {
    name                  = "backendvm"
    resource_group_name   = "devopsinsiders-rg1"
    location              = "West Europe"
    size                  = "Standard_DS1_v2"
    admin_username        = "devopsadmin"
    admin_password        = "P@ssw01rd@123"
    network_interface_ids = ["/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/backendvm-nic"]
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-focal"
      sku       = "20_04-lts"
      version   = "latest"
    }
  }
  "vm3" = {
    name                  = "frontendvm2"
    resource_group_name   = "devopsinsiders-rg1"
    location              = "West Europe"
    size                  = "Standard_DS1_v2"
    admin_username        = "devopsadmin"
    admin_password        = "P@ssw01rd@123"
    network_interface_ids = ["/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/frontendvm2-nic"]
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-focal"
      sku       = "20_04-lts"
      version   = "latest"
    }
  }
}
