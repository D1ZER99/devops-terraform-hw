output "bucket_name" {
  value = google_storage_bucket.static.name
}

output "bigquery_dataset_id" {
  value = google_bigquery_dataset.dataset.dataset_id
}

output "vm_instance_ip" {
  value = google_compute_instance.vm_instance.network_interface[0].network_ip
}
