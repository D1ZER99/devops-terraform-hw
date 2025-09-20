// Create bucket 
resource "google_storage_bucket" "static" {
 name          = "dizervf-first-bucket-99"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}

// Create BiqQuery Dataset
resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "my_first_dataset_99"
  friendly_name               = "My First Dataset"
  description                 = "This is my first dataset"
  location                    = "US"
  default_table_expiration_ms = 3600000
  delete_contents_on_destroy  = true
}

// Create VM instance
resource "google_compute_instance" "vm_instance" {
  name         = "vm-instance-99"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }
}
