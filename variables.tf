// Project ID
variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default     = "terraform-uku-devops"
}

// Region
variable "region" {
  description = "The region in which to provision resources."
  type        = string
  default     = "us-central1"
}

// Zone
variable "zone" {
  description = "The zone in which to provision resources."
  type        = string
  default     = "us-central1-c"
}

// Machine Type
variable "machine_type" {
  description = "The machine type to use for the VM instance."
  type        = string
  default     = "e2-standard-2"
}