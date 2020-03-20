# These resources are to be created before running "terraform init" 

terraform {
  backend "azurerm" {
    resource_group_name  = "dev"
    storage_account_name = "devmurodbey"
    container_name       = "devcontainer"
    access_key           = "b8jEIEt68kC5NiGAxKwt9gawspmpPTzRkieVlXed6f8LhsjpXgtpKrsUSEA2hgfHUTAdsp74SC83cH4B0XUFdQ=="
    key                  = "dev_terraform.tfstate"
  }
}
