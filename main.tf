#---------root/main.tf-----------

#creates a random id for the buckets
resource "random_id" "bucket_prefix" {
  byte_length = 4
}

module "buckets" {
  source        = "./buckets"
  bucket_prefix = random_id.bucket_prefix.hex
  default_label = local.default_label

}

module "bigquery" {
  source        = "./bigquery"
  default_label = local.default_label
}