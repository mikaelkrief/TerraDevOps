provider "azurerm" {
  version = "1.23.0"
}

terraform {
  required_version = "0.11.13"
  backend "azurerm" {
    storage_account_name = "shared__application__tfsa"
    container_name       = "terraform"
    key                  = "terraform-__environment__.tfstate"
    access_key           = "__tf_storage_account_key__"
  }
}