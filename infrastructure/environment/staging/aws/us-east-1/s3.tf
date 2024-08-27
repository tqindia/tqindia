```hcl
# Provider configuration
provider "aws" {
  region = "us-west-2"
}

# Define an EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer"
  }
}

# Define a security group
resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Allow HTTP inbound traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Associate the security group with the instance
resource "aws_network_interface_sg_attachment" "web_sg_attachment" {
  security_group_id    = aws_security_group.web_sg.id
  network_interface_id = aws_instance.web.primary_network_interface_id
}
```