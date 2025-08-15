resource "azurerm_storage_account" "kt1" {
    name                     = var.azurerm_storage_account_name
    resource_group_name      = var.resource_group_name
    location                 = var.location
    account_tier             = var.access_tier
    account_replication_type = var.account_replication_type
    
    tags = {
        environment = "Terraform"
    }  
}

