module "dynamodb" {
  source = "./module_dynamodb"

  region     = var.region
  table_name = var.table_name
}
