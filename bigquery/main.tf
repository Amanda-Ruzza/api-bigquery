#---------bigquery/main.tf-----------

# Data Set for the 2 different seatgeeks tables:

resource "google_bigquery_dataset" "seatgeeks_dataset" {
    dataset_id = "seatgeeks"
    friendly_name = "seatgeeks_dataset"
    description = "Dataset for the Seatgeeks Project"
    location = "US"
    labels = var.default_label
    
}

output "seatgeeks_dataset_friendly_name" {
  value = google_bigquery_dataset.seatgeeks_dataset.friendly_name
}