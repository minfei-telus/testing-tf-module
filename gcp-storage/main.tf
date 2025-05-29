# Main Terraform configuration file for GCP Storage Bucket

module "storage_bucket" {
  source          = "git::https://github.com/telus/tf-module-gcp-storage.git?ref=v1.6.0"
  project_id      = var.project_id
  bucket_name     = var.bucket_name
  region          = var.region
  storage_class   = var.storage_class
  versioning_enabled = var.versioning_enabled
  force_destroy_enabled = var.force_destroy_enabled
  
  # Example lifecycle rule to delete noncurrent objects after 7 days
  lifecycle_rules = [{
    action_type = "Delete",
    condition_days_since_noncurrent_time = "7"
  }]
  
  # IAM members configuration from JSON file
  iam_members_file = "${path.module}/iam_members.json"
  
  # Optional: Soft delete policy configuration
  soft_delete_retention = "604800"  # 7 days in seconds
}
