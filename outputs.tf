#---------root/outputs.tf-----------

# Using the output from the local variable to call the label on all modules and resources
output "default_label" {
  value = local.default_label
}

# Bucket Name
output "raw_data_seatgeeks" {
  value = module.buckets.raw_data_seatgeeks_name
}
