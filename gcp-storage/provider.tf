provider "google" {
  project     = "minfei-test-lab-001304"
  region      = "northamerica-northeast1"
  credentials = file("../new-key.json")
}
