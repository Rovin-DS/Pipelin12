terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.73.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
    features {}
  
}

resource "azurerm_resource_group" "rgs" {
    name = "rg1"
    location = "centralindia"
  
}