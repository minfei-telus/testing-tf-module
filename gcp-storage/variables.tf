variable "project_id" {
  type        = string
  default     = "minfei-test-lab-001304"
  description = "The ID of the project in which the resources belong"
}

variable "bucket_name" {
  type        = string
  default     = "minfei-test-storage-bucket"
  description = "The name of the GCP storage bucket"
}

variable "region" {
  type        = string
  default     = "northamerica-northeast1"
  description = "The region where the bucket will be created"
}

variable "storage_class" {
  type        = string
  default     = "REGIONAL"
  description = "The storage class of the bucket (REGIONAL, MULTI_REGIONAL, NEARLINE, COLDLINE)"
}

variable "versioning_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable versioning for the bucket"
}

variable "force_destroy_enabled" {
  type        = bool
  default     = true
  description = "Whether to force destroy the bucket even if it contains objects"
}
