variable "project_id" {
  description = "Google Cloud project that owns the buckets and service accounts."
  type        = string
}

variable "location" {
  description = "Cloud Storage bucket location, such as US or us-central1."
  type        = string
}

variable "bucket_name" {
  description = "Globally unique names for the application storage buckets."
  type = string

}

variable "GKE_machine_type" {
  description = "Machine type that determines the compute power of the GKE cluster."
  type = string
}