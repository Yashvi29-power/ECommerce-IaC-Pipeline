# CI/CD Pipeline Overview

## Objective

This project implements a Continuous Integration (CI) pipeline using GitHub Actions to automate application verification and security testing before deployment.

---

## Pipeline Workflow

1. Checkout Source Code
2. Setup Python Environment
3. Install Project Dependencies
4. Install Security Tools
5. Perform Dependency Vulnerability Scan using pip-audit
6. Perform Static Application Security Testing using Bandit
7. Verify Python Application
8. Build Docker Image
9. Generate Software Bill of Materials (SBOM)
10. Initialize Terraform
11. Validate Terraform Configuration
12. Scan Infrastructure using Checkov
13. Upload Security Artifacts

---

## Security Tools Used

### Bandit
Performs Static Application Security Testing (SAST) on Python source code.

### pip-audit
Identifies vulnerable Python package dependencies.

### Checkov
Scans Infrastructure as Code configurations for security misconfigurations.

### Terraform
Validates Infrastructure as Code before deployment.

### CycloneDX SBOM
Generates a Software Bill of Materials for dependency tracking.

---

## Benefits

- Automated Security Checks
- Early Vulnerability Detection
- Infrastructure Validation
- Reproducible Builds
- Secure Development Lifecycle