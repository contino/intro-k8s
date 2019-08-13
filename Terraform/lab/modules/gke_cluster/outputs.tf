output "gke_cluster_ip" {
  value = google_container_cluster.demo_cluster.endpoint
}

output "gke_cluster_master_version" {
  value = google_container_cluster.demo_cluster.master_version
}
