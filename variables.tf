variable "resource_group_name" {
  type        = string
  description = "Name der Resource Group"
  default     = "rg-static-webapp"
}

variable "location" {
  type        = string
  description = "Azure Region"
  default     = "westeurope"
}

variable "site_name" {
  type        = string
  description = "Name der Static Web App (muss global eindeutig sein)"
  default     = "tf-static-site-example-12345"
}

variable "repository_url" {
  type        = string
  description = "GitHub-Repository-URL, z. B. https://github.com/youruser/yourrepo"
  default     = ""
}

variable "branch" {
  type        = string
  description = "Branch der GitHub Repo (z. B. main)"
  default     = "main"
}

variable "sku_name" {
  type        = string
  description = "SKU für die Static Web App (z. B. Free, Standard)"
  default     = "Free"
}

variable "app_location" {
  type        = string
  description = "Pfad zur App im Repo (z. B. / für Root)"
  default     = "/"
}

variable "api_location" {
  type        = string
  description = "Pfad zur API im Repo (leer lassen, wenn keine)"
  default     = ""
}

variable "app_artifact_location" {
  type        = string
  description = "Ort der gebauten App-Artefakte (leer für Root)"
  default     = ""
}

# Optional (sensitive): GitHub Personal Access Token, falls Terraform die GitHub Action konfigurieren soll
variable "repository_token" {
  type        = string
  description = "Optional: GitHub Token, um die GitHub Action / Verbindung automatisch zu erstellen"
  default     = ""
  sensitive   = true
}
