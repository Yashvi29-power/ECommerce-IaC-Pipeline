variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "S3 Bucket Name"
  default     = "ecommerce-iac-demo-bucket"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Machine Image"
  default = "ami-0c02fb55956c7d316"
}