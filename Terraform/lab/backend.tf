terraform {
  backend "gcs" {
    bucket = "terraform-contino-backend"
    prefix = "global/state"
  }
}

