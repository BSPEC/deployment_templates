# S3 Instance Terraform Module
This Terraform module creates an S3 Bucket
## Requirements
Terraform 0.13 or later
An AWS account with the required permissions to create S3 Bucket and other AWS resources.

## Usage
To use this module in your Terraform configuration, add the following code:

``` Terraform
module "s3" {
  source = "./module_s3"

  bucket_name = var.bucket_name
}

```

Replace the values of the variables with your own values, and make sure to set up the necessary environment variables for Terraform to authenticate API requests to AWS.

# Inputs
The following inputs are required:
`bucket_name`: Name of the S3 bucket.

## Outputs
The following outputs are available:

`s3_bucket_name`: Name of the S3 bucket.

# License
This module is licensed under the Apache 2.0 License.