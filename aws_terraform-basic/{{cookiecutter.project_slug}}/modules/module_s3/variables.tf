variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "s3_tags" {
  type        = string
  description = "The Tags to use to reference the S3 Bucket"
  default     = "my-project-name"
}
