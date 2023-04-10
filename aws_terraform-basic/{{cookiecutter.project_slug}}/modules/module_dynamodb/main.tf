provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

resource "aws_dynamodb_table" "table" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  attribute = var.attribute

  key_schema = var.key_schema
}
