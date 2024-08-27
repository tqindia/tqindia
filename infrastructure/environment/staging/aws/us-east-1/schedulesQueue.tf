# This Terraform configuration sets up an AWS S3 bucket
# Initializing AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

# Creating an S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket"
  acl    = "private"

  tags = {
    Name        = "My Example Bucket"
    Environment = "Dev"
  }
}

# Adding a bucket policy to the S3 bucket
resource "aws_s3_bucket_policy" "example" {
  bucket = aws_s3_bucket.example.bucket

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "s3:GetObject"
        Effect = "Allow"
        Resource = "${aws_s3_bucket.example.arn}/*"
        Principal = "*"
      },
    ]
  })
}