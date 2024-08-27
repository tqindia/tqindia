# This Terraform configuration sets up an AWS EC2 instance with basic settings.

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.example.id
}