# CI/CD Security Workflow

## Overview

This project follows DevSecOps principles by integrating security checks into the Continuous Integration pipeline.

## Workflow

Developer Push
      │
      ▼
GitHub Actions
      │
      ├── Install Dependencies
      ├── Dependency Vulnerability Scan (Safety)
      ├── Static Application Security Testing (Bandit)
      ├── Verify Python Application
      ├── Docker Image Build
      ├── Generate Software Bill of Materials (SBOM)
      ├── Terraform Validation
      ├── Infrastructure Security Scan (Checkov)
      └── Upload Build Artifacts

## Benefits

- Detect vulnerable dependencies
- Detect insecure Python code
- Validate Infrastructure as Code
- Generate Software Bill of Materials
- Automate Docker image creation
- Improve software supply chain security