provider "google" {
  project = var.project
}

module "iam" {
  source = "./modules/iam"
  project = var.project
  svc_accnt_permissions = var.svc_accnt_permissions
  user_accnt_permissions = var.user_accnt_permissions
  users = var.users
}

module "compute_jumpbox" {
  source = "./modules/compute_jumpbox"
  users = var.users
  instance_type = var.instance_type
  zone = var.zone
  service_account = module.iam.compute_iam_email
}

module "gke_cluster" {
  source = "./modules/gke_cluster"
  zone = var.zone
  node_count = var.node_count
}
