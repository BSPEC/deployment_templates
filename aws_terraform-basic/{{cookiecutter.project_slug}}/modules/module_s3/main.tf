provider "aws" {
  version = "~> 2.0"
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name = var.s3_tags
  }
}
