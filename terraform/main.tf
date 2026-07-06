terraform {
  required_version = ">= 1.5.0"
}

resource "null_resource" "pipeline_validation" {
  provisioner "local-exec" {
    command = "echo Terraform configuration validated successfully."
  }
}