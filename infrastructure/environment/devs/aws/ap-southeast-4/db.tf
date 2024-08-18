# This Terraform configuration file creates an AWS S3 bucket.

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "my-unique-bucket-name"
  acl    = "private"

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}