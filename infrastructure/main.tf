terraform {
  required_version = ">= 1.5.0"

  backend "gcs" {
    bucket = var.bucket
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

resource "google_container_cluster" "minimal_standard" {
  name     = "minimal-standard-cluster"
  location = var.location
  deletion_protection      = false
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "minimal-node-pool"
  location   = var.location
  cluster    = google_container_cluster.minimal_standard.name
  node_count = 1

  node_config {
    machine_type = var.GKE_machine_type
  }
}