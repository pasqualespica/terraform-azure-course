provider "azurerm" {
  version = "=1.35.0"
}

# Create a resource group
resource "azurerm_resource_group" "demo" { # "demo" is the name in Terraform
  name     = "first-steps-demo" # "first-steps-demo" is the name in Azure
  location = var.location
}
