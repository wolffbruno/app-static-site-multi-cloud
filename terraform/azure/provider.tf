terraform {
  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "terraformstatebrunowol"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  alias = "cloud"
}
