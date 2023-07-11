#---------bigquery/main.tf-----------

# Data Set for the 2 different Seatgeeks tables:

resource "google_bigquery_dataset" "seatgeeks_dataset" {
    dataset_id = "seatgeeks"
    friendly_name = "seatgeeks_dataset"
    description = "Dataset for the Seatgeeks Project"
    location = "US"
    labels = var.default_label
    
}

resource "google_bigquery_table" "venues_nyc" {
  dataset_id = google_bigquery_dataset.seatgeeks_dataset.dataset_id
  table_id   = "venues_nyc"
  friendly_name = "venues_nyc"
  description = "Table for the New York City venues"
  labels = var.default_label
   
  
  # external_data_configuration {
  #   autodetect = true
  # }

  # source_uris = ["gs://cr-lab-aruzza-ae7140b2-seatgeeks/"] #Add the Google Bucket URI here from the Outputs.tf file?
}

resource "google_bigquery_table" "events_nyc" {
  dataset_id = google_bigquery_dataset.seatgeeks_dataset.dataset_id
  table_id   = "events_nyc"
  friendly_name = "venues_nyc"
  description = "Table for the New York City events"
  labels = var.default_label
   
  
  # external_data_configuration {
  #   autodetect = true
  # }

  # source_uris = ["gs://cr-lab-aruzza-ae7140b2-seatgeeks/"] #Add the Google Bucket URI here from the Outputs.tf file?
}

output "seatgeeks_dataset_friendly_name" {
  value = google_bigquery_dataset.seatgeeks_dataset.friendly_name
}