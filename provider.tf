terraform {

backend "azurerm" {
  resource_group_name   = azurerm_resource_group.testrg.name
  storage_account_name  = azurerm_storage_account.testsa.name
  container_name        = "tfstate"
  key                   = "terraform.tfstate"
}


  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.73.0"  
    }
  }
}



provider "azurerm" {
  features {}
}               


