provider "google" {
  credentials = file("kms-sa.json")
  project     = var.project_id
  region      = var.location

}
