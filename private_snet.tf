resource "azurerm_subnet" "snet2" {
  name                 = var.subnet_name2
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefix       = var.subnet_prefix2
  
  }