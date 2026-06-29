# ECommerce-IaC-Pipeline

A DevSecOps project focused on securing an enterprise e-commerce deployment pipeline using CI/CD, container security, Infrastructure as Code (IaC) scanning, and automated security testing.

## Technology Stack

* GitHub Actions
* Docker
* SonarQube
* Trivy
* Terraform
* Checkov
* Python
* Git

## Team Structure

* Team Lead: Yashvi Thakkar
* Container Security Engineer
* IaC Security Engineer
* Documentation & Reporting Engineer

## CI/CD Security Features

- GitHub Actions Pipeline
- Docker Build Automation
- Bandit SAST Security Scanning
- Build Artifact Generation

Pipeline Flow:

Install Dependencies
→ Security Scan
→ Verify Application
→ Docker Build
→ Artifact Upload

## Security Features

- GitHub Actions CI/CD
- Safety Dependency Scanning
- Bandit SAST
- Docker Build Automation
- SBOM Generation
- Terraform Validation
- Checkov IaC Security Scanning

## Project Structure

```
.github/workflows/
app/
docker/
terraform/
reports/
docs/
```