# variables.tf
variable "location" {
  description = "The Azure region where resources will be deployed."
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group for the ACR."
  default     = "frontend-rg"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  default     = "frontendACR"
}
