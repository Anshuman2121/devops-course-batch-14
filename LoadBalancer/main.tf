resource "azurerm_public_ip" "pip" {
  name                = "fronend-lb-ip"
  location            = "West Europe"
  resource_group_name = "devopsinsiders-rg1"
  allocation_method   = "Static"
}

resource "azurerm_lb" "lb" {
  name                = "fronend-lb"
  location            = "West Europe"
  resource_group_name = "devopsinsiders-rg1"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}

resource "azurerm_lb_backend_address_pool" "frontend-pool" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "frontendPool"
}

resource "azurerm_network_interface_backend_address_pool_association" "frontend1" {
  network_interface_id    = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/frontendvm-nic"
  ip_configuration_name   = "frontend1"
  backend_address_pool_id = azurerm_lb_backend_address_pool.frontend-pool.id
}

resource "azurerm_network_interface_backend_address_pool_association" "frontend2" {
  network_interface_id    = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/frontendvm2-nic"
  ip_configuration_name   = "frontend2"
  backend_address_pool_id = azurerm_lb_backend_address_pool.frontend-pool.id
}

resource "azurerm_lb_probe" "probe" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "frontend-probe"
  port            = 80
}

resource "azurerm_lb_rule" "rule" {
  loadbalancer_id                = azurerm_lb.lb.id
  name                           = "frontendRule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_ids = [ azurerm_lb_backend_address_pool.frontend-pool.id ]
  probe_id = azurerm_lb_probe.probe.id
}
