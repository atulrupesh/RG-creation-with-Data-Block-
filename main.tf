resource "azurerm_resource_group" "r1" {
  name     = var.resource_group_name
  location = var.location
}


variable "resource_group_name" {}
variable "location" {}