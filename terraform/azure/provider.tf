terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.76.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "terraformstatebrunowolff"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  subscription_id = "71c23e9c-8230-4fe3-899a-a6c8abb23074"
  tenant_id       = "11dbbfe2-89b8-4549-be10-cec364e59551"
}
