variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default     = "micro-k8s-gozd"
}

variable "region" {
  description = "The region for GCP resources"
  type        = string
  default     = "europe-west1"
}

variable "zone" {
  description = "The zone for the cluster"
  type        = string
  default     = "europe-west1-b"
}

variable "node_count" {
  description = "Number of nodes in the Kubernetes cluster"
  type        = number
  default     = 2
}

