provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "logs_bucket" {
  bucket = "ecommerce-security-logs-bucket"
}

resource "aws_security_group" "web_sg" {
  name        = "web-security-group"
  description = "Allow HTTP traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
