nics = {
  "nic1" = {
    name                 = "frontendvm-nic"
    location             = "West Europe"
    resource_group_name  = "devopsinsiders-rg1"
    subnet_id            = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/virtualNetworks/vnet-devopsinsider1/subnets/frontend-subnet"
  }
  "nic2" = {
    name                 = "backendvm-nic"
    location             = "West Europe"
    resource_group_name  = "devopsinsiders-rg1"
    subnet_id            = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/virtualNetworks/vnet-devopsinsider1/subnets/backend-subnet"
  }
  "nic3" = {
    name                 = "frontendvm2-nic"
    location             = "West Europe"
    resource_group_name  = "devopsinsiders-rg1"
    subnet_id            = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/virtualNetworks/vnet-devopsinsider1/subnets/frontend-subnet"
  }
}
