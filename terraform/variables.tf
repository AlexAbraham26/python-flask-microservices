# variable "client_id" {
#   description = "Client ID for the Azure Service Principal"
#   type        = string
# }

# variable "client_secret" {
#   description = "Client Secret for the Azure Service Principal"
#   type        = string
# }

# variable "subscription_id" {
#   description = "Subscription ID for the Azure subscription"
#   type        = string
# }

# variable "tenant_id" {
#   description = "Tenant ID for the Azure subscription"
#   type        = string
# }

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
