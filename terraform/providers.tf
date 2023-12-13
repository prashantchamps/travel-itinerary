provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "main-infra"
    storage_account_name = "mydemotfstate"
    container_name       = "tfstate"
    key                  = "5yTJAsUWSdvdLEOSo6rFvuKQyLcHNW48dMc6W+DF336fF088lUCoKq3KYBReyztXsxvfrMbMM1qg+AStYxYXUg=="
  }
}

data "azurerm_client_config" "current" {}
