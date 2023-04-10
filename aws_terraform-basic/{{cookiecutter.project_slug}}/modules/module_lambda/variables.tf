variable "region" {
  type        = string
  description = "The AWS region to use for the Lambda Function"
}

variable "function_name" {
  type        = string
  description = "The file name of the function to run"
}

variable "handler" {
  type        = string
  description = "The method in your function code that processes events"
  default     = "handler"
}

variable "runtime" {
  type        = string
  description = "The AWS unique runtime identifier"
  default     = "python3.9"
}

variable "filename" {
  type        = string
  description = "The name of the file containing the source code of the function"
}

variable "environment_variables" {
  type        = map(string)
  description = "A map of environment variables to set for the function"
}

variable "iam_role_name" {
  type        = string
  description = "The name of the IAM role to use for the Lambda function"
}
