provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "ecommerce_bucket" {
  bucket = var.bucket_name

  acl = "private"

  tags = {
    Project = "ECommerce-IaC-Pipeline"
    Owner   = "Member3"
    Environment = "Development"
  }
   
  versioning {
    enabled = true
  }

  server_side_encryption_comfiguration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.ecommerce_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
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

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-security-group"
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