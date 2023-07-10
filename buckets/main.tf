#---------buckets/main.tf-----------

# Bucket with the raw JSON data to be injested in the BigQuery Dataset

resource "google_storage_bucket" "raw_data_seatgeeks" {
  name          = "cr-lab-aruzza-${var.bucket_prefix}-seatgeeks"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"

  labels = var.default_label
  versioning {
    enabled = true
  }
}

output "raw_data_seatgeeks_name" {
  value = google_storage_bucket.raw_data_seatgeeks.name
}
