# This Terraform configuration uses the AWS provider to create an S3 bucket and an EC2 instance.

provider "aws" {
  region = "us-east-1"
}

# Create an S3 bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-example-bucket"
  acl    = "private"
}

# Create an EC2 instance
resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Example Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}