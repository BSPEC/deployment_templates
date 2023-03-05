variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "region" {
  type        = string
  description = "The AWS region to use for the S3 Bucket"
}

variable "s3_tags" {
  type        = string
  description = "The Tags to use to reference the S3 Bucket"
  default     = "my-project-name"
}
