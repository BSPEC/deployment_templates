provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

resource "aws_iam_role" "lambda_function_iam_role" {
  name = var.iam_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Principal = {
          Service = "lambda.amazonaws.com"
        },
        Effect = "Allow",
        Sid    = ""
      }
    ]
  })
}

resource "aws_lambda_function" "lambda_function" {
  function_name = var.function_name
  handler       = var.handler
  runtime       = var.runtime
  source_code = {
    filename = var.filename
  }
  environment {
    variables = var.environment_variables
  }
  role = aws_iam_role.example.arn
}
