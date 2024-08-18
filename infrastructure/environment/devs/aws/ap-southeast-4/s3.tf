# Terraform configuration for creating an AWS S3 bucket

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# Documentation:
# This configuration will create an S3 bucket in the "us-west-2" region with private access.
# The bucket will be tagged with a name and environment for easy identification.