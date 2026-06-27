output "bucket_name" {
  value = aws_s3_bucket.ecommerce_bucket.bucket
}

output "instance_id" {
  value = aws_instance.web_server.id
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}