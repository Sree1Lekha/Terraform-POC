#Configure Azure Provider
provider "azurerm" {
  version "=3.0.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}
output "id" {
  value = data.azurerm_resource_group.example.id
}
