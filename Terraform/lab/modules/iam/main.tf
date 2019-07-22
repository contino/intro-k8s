provider "google" {
  credentials = "${file("terraform-iam.json")}"
  project     = "${var.project}"
}

resource "google_project_iam_custom_role" "k8s-wokshop-custom-role" {
  role_id     = "us_contino_k8s_workshop"
  title       = "k8s-workshop-contino"
  permissions = ["${var.permissions}"]
  project     = "${var.project}"
}
