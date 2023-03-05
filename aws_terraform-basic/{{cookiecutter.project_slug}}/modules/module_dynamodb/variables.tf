variable "table_name" {
  type        = string
  description = "Name of the DynamoDB table"
}

variable "region" {
  type        = string
  description = "The AWS region to use for the DynomoDB Tables"
}

variable "billing_mode" {
  type        = string
  description = "Which billing option for processing reads and writes on your tables: on-demand and provisioned"
  default     = "PROVISIONED"
}

variable "read_capacity" {
  type        = number
  description = "Read capacity units for the DynamoDB table"
  default     = 5
}

variable "write_capacity" {
  type        = number
  description = "Write capacity units for the DynamoDB table"
  default     = 5
}

variable "attribute" {
  type = list(object({
    name = string
    type = string
  }))
  description = "Defines the Schema for the attributes of the DynamoDB table"
  default = [
    {
      name = "id"
      type = "S"
    },
    {
      name = "name"
      type = "S"
    },
  ]
}

variable "key_schema" {
  type = list(object({
    attribute_name = string
    key_type       = string
  }))
  description = "Defines the schema for the primary key of the DynamoDB table"
  default = [
    {
      attribute_name = "id"
      key_type       = "HASH"
    },
  ]
}
