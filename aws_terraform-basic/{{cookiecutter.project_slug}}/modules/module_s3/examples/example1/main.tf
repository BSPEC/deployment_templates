module "s3" {
  source = "./modules/module_s3"

  region      = var.region
  bucket_name = var.bucket_name
}
