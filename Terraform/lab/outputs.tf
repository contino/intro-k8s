output "gke_cluster_ip" {
 value = "${module.gke_cluster.gke_cluster_ip}"
}

output "gke_cluster_master_version" {
 value = "${module.gke_cluster.gke_cluster_master_version}"
}
