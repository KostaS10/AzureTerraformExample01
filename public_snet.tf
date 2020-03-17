resource "azurerm_subnet" "snet1" {
  name                 = var.subnet_name1
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefix       = var.subnet_prefix1
  }
  
  resource "azurerm_subnet_network_security_group_association" "nsgsnet" {
  subnet_id                 = azurerm_subnet.snet1.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}