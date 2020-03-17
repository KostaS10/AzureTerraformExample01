resource "azurerm_windows_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  size               	= var.vm_size
  admin_username		= var.admin_username
  admin_password		= var.admin_password

  source_image_reference {
    publisher 			= "MicrosoftWindowsServer"
    offer    			= "WindowsServer"
    sku      			= "2016-Datacenter"
    version   			= "latest"
  }

  os_disk {
    caching           	= "ReadWrite"
    storage_account_type = var.vm_os_disk_type
	name				= var.vm_os_disk_name
	disk_size_gb		= var.vm_os_disk_size_gb
  }

}

resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = var.ip_nic_name
    subnet_id                     = azurerm_subnet.snet1.id
    private_ip_address_allocation = "Dynamic"
	public_ip_address_id		  = azurerm_public_ip.pip.id
  }
  
  
}

resource "azurerm_public_ip" "pip" {
  name                = var.pip_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  }
