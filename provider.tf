
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "2ee73fb1-cc35-48c5-960d-5327d2785dfa"
}
