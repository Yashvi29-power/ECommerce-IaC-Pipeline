variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "S3 Bucket Name"
  type        = string
  default     = "ecommerce-iac-demo-bucket"
}

variable "ami_id" {
  description = "EC2 AMI"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

