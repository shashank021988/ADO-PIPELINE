resource "azurerm_resource_group" "testrg" {
  name     = "testrg"
  location = "eastus"       
  
}







resource "azurerm_storage_account" "testsa" {
  name                     = "testsa"
  resource_group_name      = azurerm_resource_group.testrg.name
  location                 = azurerm_resource_group.testrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}           


