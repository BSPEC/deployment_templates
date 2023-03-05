region         = "eu-central-1"
table_name     = "my-table-name"
billing_mode   = "PROVISIONED"
read_capacity  = 5
write_capacity = 5
attribute = [
  {
    name = "id"
    type = "S"
  },
  {
    name = "name"
    type = "S"
  },
]
key_schema = [
  {
    attribute_name = "id"
    key_type       = "HASH"
  },
]
