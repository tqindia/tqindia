# Provider configuration
provider "aws" {
  region = "us-west-2"
}

# VPC resource
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main_vpc"
  }
}

# Public Subnet resource
resource "aws_subnet" "public" {
  vpc_id                 = aws_vpc.main.id
  cidr_block             = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

# Internet Gateway resource
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main_igw"
  }
}

# Route Table resource
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public_rt"
  }
}

# Associate Route Table with Public Subnet
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

# Documentation:
# This configuration sets up a VPC with a public subnet in the AWS region us-west-2. It includes an internet gateway
# and creates a route in the route table that directs internet traffic through the internet gateway. The resources are tagged for easy identification.