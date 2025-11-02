

resource "azurerm_resource_group" "rg"{
    count= length(var.rg-name)
name =var.rg-name [count.index]
location=var.rg-location[count.index]
 tags  = {
    environment = "dev"
    owner       = "Shahnawaz"
  }
  
lifecycle {
  ignore_changes = [ tags ]
}
}


resource "azurerm_storage_account" "stg" {
    count = length(var.storage_account_name)
  name                     = var.storage_account_name[count.index]
  resource_group_name      = var.rg-name[count.index]
  location                 = var.rg-location[count.index]
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}
