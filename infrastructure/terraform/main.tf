provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "ecommerce_bucket" {
  bucket = var.bucket_name

  tags = {
    Project = "ECommerce-IaC-Pipeline"
    Owner   = "Member3"
    Environment = "Development"
  }
}

resource "aws_security_group" "web_sg" {
  name = "web-security-group"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami = var.ami_id 
  instance_type = var.instance_type

  vpc_security_group_ids = [ aws_security_group.web_sg.id ]

  tags = {
    Name = "ECommerce-Web_Server"
  }
}