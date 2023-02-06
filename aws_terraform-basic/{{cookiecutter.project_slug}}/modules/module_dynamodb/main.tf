provider "aws" {
  version = "~> 2.0"
}

resource "aws_dynamodb_table" "table" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  read_capacity  = 5
  write_capacity = 5

  attribute = [
    {
      name = "id"
      type = "S"
    },
  ]

  key_schema = [
    {
      attribute_name = "id"
      key_type       = "HASH"
    },
  ]
}
