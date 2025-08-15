module "RG" {
source = "./child/RG"
  resource_group_name = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "storage" {
source = "./child/storage"
  azurerm_storage_account_name = var.azurerm_storage_account_name
  location = var.location
  access_tier = var.access_tier
  account_replication_type = var.account_replication_type
  resource_group_name = var.resource_group_name
 depends_on = [ module.RG ]
  
}

