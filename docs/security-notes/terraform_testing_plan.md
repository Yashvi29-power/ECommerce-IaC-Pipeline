# Terraform Security Testing Plan

## Objective
Prepare insecure Terraform resources for Checkov and TFSec scanning.

## Planned Checks
- Public S3 Bucket
- Open SSH Port(22)
- Open HTTP Port(80)

## Security Tools
- Checkov
- TFSec

## Expected Outcome
Both scanners should identify these security issues. They will be fixed during week 3.
