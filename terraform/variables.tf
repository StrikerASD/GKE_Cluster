variable "project_id" {
  type = string
}

variable "project_number" {
  type = string
}

variable "default_compute_service_account" {
  type = string
  description = "Service account which is created with the GCP project"
}