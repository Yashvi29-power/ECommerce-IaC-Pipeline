# Remaining Security Findings

## Current Score 

passed checks : 22
failed checks : 8

## Remaining Findings

1. S3 Cross-Region Replication
2. S3 Lifecycle Configuration
3. S3 Event Notifications
4. S3 Access Logging
5. S3 KMS encryption
6. EC2 IAM role

# Infrastructure Security Best Practices

## Terraform

- Use `terraform fmt` before committing.
- Validate infrastructure using `terraform validate`.
- Store Terraform state securely.

## S3 Security

- Keep buckets private.
- Enable versioning.
- Enable server-side encryption.
- Block public access.
- Configure lifecycle policies.

## EC2 Security

- Enable IMDSv2.
- Encrypt EBS volumes.
- Enable detailed monitoring.
- Attach IAM roles instead of hardcoding credentials.

## Security Groups

- Avoid using 0.0.0.0/0 for SSH.
- Allow only required ports.
- Add descriptions to every rule.

## Security Scanning

- Scan Terraform using Checkov.
- Scan Terraform using TFSec.
- Fix high and critical findings before deployment.

## CI/CD

- Run security scans automatically before deployment.
- Fail the pipeline if critical issues are found.

# Final Security Checklist

## Terraform

- [x] Terraform formatted
- [x] Terraform validated

## S3

- [x] Private bucket
- [x] Versioning enabled
- [x] Encryption enabled
- [x] Public access blocked
- [x] Lifecycle configuration added

## EC2

- [x] Encrypted storage
- [x] IMDSv2 enabled
- [x] Monitoring enabled

## Security Tools

- [x] Checkov executed
- [x] TFSec executed

## Documentation

- [x] Security notes completed
- [x] Reports generated