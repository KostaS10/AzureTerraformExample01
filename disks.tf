resource "azurerm_managed_disk" "disk1" {
  name                 = var.disk_name1
  location             = var.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = var.disk_type1
  create_option        = "Empty"
  disk_size_gb         = var.disk_size1
}
resource "azurerm_managed_disk" "disk2" {
  name                 = var.disk_name2
  location             = var.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = var.disk_type2
  create_option        = "Empty"
  disk_size_gb         = var.disk_size2
}
resource "azurerm_managed_disk" "disk3" {
  name                 = var.disk_name3
  location             = var.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = var.disk_type3
  create_option        = "Empty"
  disk_size_gb         = var.disk_size3
}
resource "azurerm_managed_disk" "disk4" {
  name                 = var.disk_name4
  location             = var.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = var.disk_type4
  create_option        = "Empty"
  disk_size_gb         = var.disk_size4
}

resource "azurerm_virtual_machine_data_disk_attachment" "attach1" {
  managed_disk_id    = azurerm_managed_disk.disk1.id
  virtual_machine_id = azurerm_windows_virtual_machine.vm.id
  lun                = "10"
  caching            = "ReadWrite"
}

resource "azurerm_virtual_machine_data_disk_attachment" "attach2" {
  managed_disk_id    = azurerm_managed_disk.disk2.id
  virtual_machine_id = azurerm_windows_virtual_machine.vm.id
  lun                = "20"
  caching            = "ReadWrite"
}

resource "azurerm_virtual_machine_data_disk_attachment" "attach3" {
  managed_disk_id    = azurerm_managed_disk.disk3.id
  virtual_machine_id = azurerm_windows_virtual_machine.vm.id
  lun                = "30"
  caching            = "ReadWrite"
}

resource "azurerm_virtual_machine_data_disk_attachment" "attach4" {
  managed_disk_id    = azurerm_managed_disk.disk4.id
  virtual_machine_id = azurerm_windows_virtual_machine.vm.id
  lun                = "40"
  caching            = "ReadWrite"
}