terraform {
 backend "gcs" {
   bucket  = "terraform-contino-backend"
   prefix  = "global/state"
   project = "devnexus-k8s-workshop"
 }
}
