# This Terraform configuration provisions an AWS S3 bucket.

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-example-bucket"
  acl    = "private"

  tags = {
    Name        = "MyExampleBucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}