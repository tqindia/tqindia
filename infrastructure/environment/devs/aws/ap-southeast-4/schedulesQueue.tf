# Variable definition for the AWS region
variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

# Provider configuration for AWS
provider "aws" {
  region = var.region
}

# Resource definition for an AWS EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Example AMI ID, update as necessary
  instance_type = "t2.micro"

  # Tags for the instance
  tags = {
    Name = "example-instance"
  }
}