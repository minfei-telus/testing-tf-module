# Output values from the storage bucket module

output "bucket_id" {
  description = "The ID of the created bucket"
  value       = module.storage_bucket.bucket_id
}

output "bucket_url" {
  description = "The URL of the created bucket"
  value       = module.storage_bucket.bucket_url
}

output "bucket_name" {
  description = "The name of the created bucket"
  value       = module.storage_bucket.name
}

output "storage_class" {
  description = "The storage class of the created bucket"
  value       = module.storage_bucket.storage_class
}

output "region" {
  description = "The region of the created bucket"
  value       = module.storage_bucket.region
}
