resource "google_compute_instance" "jump_host" {
  count = 1
  name = "test-compute"
  machine_type = var.instance_type
  zone = var.zone
  boot_disk {
  initialize_params {
    image = "ubuntu-1804-lts"
}
 }

scratch_disk {
}

network_interface {
 network = "default"
 access_config {
 }
}

metadata_startup_script = file("${path.module}/scripts/userdata.sh")

service_account {
 email = var.service_account
 scopes = ["cloud-platform"]

}


}

data "template_file" "userdata" {
 template = file("${path.module}/scripts/userdata.sh")
}
