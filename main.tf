module "kms" {
  source = "./modules/cloud-kms"


  project_id = var.project_id
  keyring    = var.keyring
  location   = var.location
  keys       = var.keys
  # keys can be destroyed by Terraform
  prevent_destroy = false
  set_owners_for  = var.set_owners_for
  owners          = var.owners

  set_encrypters_for = var.set_encrypters_for
  encrypters         = var.encrypters

  set_decrypters_for = var.set_decrypters_for
  decrypters         = var.decrypters

}
