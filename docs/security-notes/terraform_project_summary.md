# Terraform Project Summary

## Project Name
ECommerce-IaC-Pipeline

## Role
Member 3 - Infrastructure as Code Security

## Week 2 Work Completed

### Infrastructure Created
- AWS Provider
- Amazon S3 Bucket
- EC2 Instance
- Security Group

### Terraform Files
- main.tf
- variables.tf
- outputs.tf

### Documentation
- AWS Resources Notes
- Terraform Security Best Practices
- Checkov vs TFSec Notes
- Ansible Security Notes
- Misconfigurations
- Terraform Testing Plan

### Security Misconfigurations
- Public S3 Bucket
- SSH (Port 22) open to all
- HTTP (Port 80) open to all

## Purpose

The infrastructure is intentionally configured with insecure settings for learning purposes. During Week 3 these configurations will be scanned using Checkov and TFSec, then remediated according to security best practices.