variable "table_name" {
  type        = string
  description = "Name of the DynamoDB table"
}

variable "billing_mode" {
  type        = string
  description = "Which billing option for processing reads and writes on your tables: on-demand and provisioned"
  default     = "PROVISIONED"
}
