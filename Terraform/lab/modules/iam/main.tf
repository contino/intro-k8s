resource "google_project_iam_custom_role" "k8s-workshop-user-role" {
  role_id = var.role_name
  title = "k8s-workshop-user-role"
  permissions = var.user_accnt_permissions
  project = var.project
}

resource "google_project_iam_custom_role" "k8s-workshop-compute-role" {
  role_id = "compute_role_test"
  title = "compute role"
  permissions = var.svc_accnt_permissions
  project = var.project
}

resource "google_service_account" "k8s-workshop-instance-account" {
  account_id = "instance-role"
  display_name = "Instance Role"
}


resource "google_project_iam_binding" "user_iam_binding" {
  project = var.project
  role = "${google_project_iam_custom_role.k8s-workshop-user-role.id}"
  members = var.users
}

resource "google_project_iam_binding" "compute_iam_binding" {
  project = var.project
  role = "${google_project_iam_custom_role.k8s-workshop-compute-role.id}"
  members = [
    "serviceAccount:${google_service_account.k8s-workshop-instance-account.email}"]
}
