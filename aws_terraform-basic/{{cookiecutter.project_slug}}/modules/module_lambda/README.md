# Lambda Function Terraform Module
This Terraform module creates an Lambda Module
## Requirements
Terraform 0.13 or later
An AWS account with the required permissions to create Lambda Functions, IAM Roles and other AWS resources.

## Usage
To use this module in your Terraform configuration, add the following code:

``` Terraform
module "lambda" {
  source = "./module_lambda"

  region                = var.region
  function_name         = var.function_name
  handler               = var.handler
  runtime               = var.runtime
  filename              = var.filename
  environment_variables = var.environment_variables
  iam_role_name         = var.iam_role_name
}

```

Replace the values of the variables with your own values, and make sure to set up the necessary environment variables for Terraform to authenticate API requests to AWS.

# Inputs
The following inputs are required:
`region`: AWS region to deploy the Lambda function in.
`function_name`: The name of the Lambda function.
`handler`: The name of the function to use as the handler.
`runtime`: The runtime to use for the function.
`filename`: The name of the file containing the source code of the function.
`environment_variables`: A map of environment variables to set for the function.
`iam_role_name`: The name of the IAM role to use for the Lambda function.

## Outputs
The following outputs are available:

`lambda_arn`: The ARN of the Lambda function.
`lambda_function_name`: The name of the Lambda function.

# License
This module is licensed under the Apache 2.0 License.