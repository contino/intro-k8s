output "compute_iam_email" {
  value = google_service_account.k8s-workshop-instance-account.email
}
