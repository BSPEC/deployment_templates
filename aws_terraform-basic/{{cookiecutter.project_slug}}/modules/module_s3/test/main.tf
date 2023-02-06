module "s3" {
  source = "./module_s3"

  bucket_name = var.bucket_name
}
