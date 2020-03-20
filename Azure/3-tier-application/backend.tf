# These resources are to be created before running "terraform init" 

terraform {
  backend "azurerm" {
    resource_group_name  = "dev"
    storage_account_name = "devmurodbey"
    container_name       = "devcontainer"
    access_key           = ""
    key                  = "dev_terraform.tfstate"
  }
}
