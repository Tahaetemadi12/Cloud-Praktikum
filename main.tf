provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_static_site" "site" {
  name                = var.site_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  repository_url = var.repository_url
  branch         = var.branch

  sku_name = var.sku_name

  build_properties {
    app_location          = var.app_location          # z. B. "/" oder "app"
    api_location          = var.api_location          # leer lassen, wenn keine API
    app_artifact_location = var.app_artifact_location # z. B. "" oder "build"
  }

  # Optional: wenn du möchtest, dass Terraform die GitHub Action automatisch konfiguriert,
  # kannst du hier ein GitHub Personal Access Token übergeben (sensitive).
  # repository_token = var.repository_token
}
