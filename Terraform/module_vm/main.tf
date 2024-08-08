provider "google" {
  project = "cts01-kavithaan"
  credentials = "/workspaces/terraform-zero-to-hero/Terraform-1/myfirstkey.json"
  region  = "us-central1"
  zone    = "us-central1-c"
}



resource "google_compute_instance" "default" {
  name         = "my-vm"
  machine_type = var.machine_type
  

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
