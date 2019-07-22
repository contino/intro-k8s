module "iam" {
 source = "modules\/iam"
 project = "${var.project}"
 permissions = "${var.permissions}"
}

module "gke_cluster" {
 source = "modules\/gke_cluster"
 project = "${var.project}" 
}
