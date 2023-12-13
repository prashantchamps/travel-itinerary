provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "main-infra"
    storage_account_name = "mydemotfstate"
    container_name       = "tfstate"
    key                  = "terraform-base.tfstate"
  }
}

data "azurerm_client_config" "current" {}
