variable "resource_group_name" {
  description = "Azure resource group for the AKS cluster."
  type        = string
}

variable "location" {
  description = "Azure region in which to create the AKS cluster."
  type        = string
}

variable "cluster_name" {
  description = "Name of the Azure Kubernetes Service cluster."
  type        = string
}

variable "acr_name" {
  description = "Globally unique Azure Container Registry name (5-50 lowercase letters and digits)."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{5,50}$", var.acr_name))
    error_message = "The ACR name must be 5-50 characters and contain only lowercase letters and digits."
  }
}

variable "node_count" {
  description = "Number of nodes in the AKS system node pool."
  type        = number
  default     = 1
}

variable "node_vm_size" {
  description = "Azure VM size for the AKS system node pool."
  type        = string
  default     = "Standard_D2s_v5"
}
