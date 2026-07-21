terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.73.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "Sourav-rg"
    storage_account_name = "storageaccount1909"
    container_name = "container"
    key_id = "rovin.tfstatefile"
  }
}

provider "azurerm" {
    features {}
  
}

resource "azurerm_resource_group" "rgs" {
    name = "rg1"
    location = "centralindia"
  
}