# S3 Instance Terraform Module
This Terraform module creates an S3 Bucket
## Requirements
Terraform 0.13 or later
An AWS account with the required permissions to create S3 Bucket and other AWS resources.

## Usage
To use this module in your Terraform configuration, add the following code:

``` Terraform
module "dynamodb" {
  source = "./module_dynamodb"

  region     = var.region
  table_name = var.table_name
}


```

Replace the values of the variables with your own values, and make sure to set up the necessary environment variables for Terraform to authenticate API requests to AWS.

# Inputs
The following inputs are required:
`region`: The AWS region to use.
`table_name`: Name of the DynomoDB Table.
`billing_mode`: The billing option for processing reads and writes on your table.
`read_capacity`: Read capacity units for the DynamoDB table.
`write_capacity`: Write capacity units for the DynamoDB table.
`attribute`: Defines the Schema for the attributes of the DynamoDB table.
`key_schema`: Defines the schema for the primary key of the DynamoDB table.

## Outputs
The following outputs are available:

`table_name`: The name of the DynamoDB table.
`arn`: The ARN of the DynamoDB table.
`stream_arn`: The ARN of the DynamoDB stream associated with the table, if any.
`stream_label`: The label of the DynamoDB stream associated with the table, if any.

# License
This module is licensed under the Apache 2.0 License.