provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "ecommerce_bucket" {
  bucket = var.bucket_name

  acl = "private"

  tags = {
    Project     = "ECommerce-IaC-Pipeline"
    Owner       = "Member3"
    Environment = "Development"
  }


  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

}


resource "aws_security_group" "web_sg" {
  name = "web-security-group"
  description = "Security group for ECommerce web server"

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["157.48.86.222/32"]
  }

  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["157.48.86.222/32"]
  }

  egress {
    description = "Outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["157.48.86.222/32"]
  }

  tags = {
    Name = "web-security-group"
  }

}

resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  monitoring = true
  
  metadata options {
    http_endpoint = "enabled"
    http_tokens = "required"
  }
  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "ECommerce-Web_Server"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.ecommerce_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket = aws_s3_bucket.ecommerce_bucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}