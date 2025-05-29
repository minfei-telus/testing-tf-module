terraform {
  backend "gcs" {
    bucket = "my-bucket-537033e"
    prefix = "terraform/storage-bucket"
  }
}
