#---------buckets/variables.tf-----------
variable "default_label" {
    description = "Default GCP label for buckets and all the project resources"
}

variable "bucket_prefix" {
    description = "Prefix for unique bucket names"
    default = "251"
}
