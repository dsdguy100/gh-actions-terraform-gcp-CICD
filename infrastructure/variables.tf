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
