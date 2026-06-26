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