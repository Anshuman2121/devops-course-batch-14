terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "rg-devopsinsiders"
  #   storage_account_name = "devopsinsiderstf"
  #   container_name       = "tfstates"
  #   key                  = "subnets.terraform.tfstate"
  # }  
}

provider "azurerm" {
  features {}
}
