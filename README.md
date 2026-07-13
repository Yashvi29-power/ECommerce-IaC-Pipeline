# ECommerce-IaC-Pipeline

A DevSecOps project focused on securing an enterprise e-commerce deployment pipeline using CI/CD, container security, Infrastructure as Code (IaC) scanning, and automated security testing.

## DevSecOps CI/CD Pipeline

![Python](https://img.shields.io/badge/Python-3.12-blue)
![Flask](https://img.shields.io/badge/Flask-Web%20Application-black)
![Docker](https://img.shields.io/badge/Docker-Container-blue)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-success)
![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)
![Checkov](https://img.shields.io/badge/Checkov-IaC%20Security-red)
![Bandit](https://img.shields.io/badge/Bandit-SAST-orange)
![SBOM](https://img.shields.io/badge/SBOM-CycloneDX-green)

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

## CI/CD Security Pipeline

The project implements an automated GitHub Actions workflow that performs:

- Dependency Vulnerability Scanning (pip-audit)
- Static Application Security Testing (Bandit)
- Docker Image Build
- Software Bill of Materials (SBOM) Generation
- Terraform Infrastructure Validation
- Infrastructure Security Scanning (Checkov)
- Upload of Security Artifacts

## Project Status

The project currently includes:

- Flask backend application
- Docker containerization
- GitHub Actions CI pipeline
- Dependency vulnerability scanning
- Static application security testing
- Infrastructure as Code validation
- Infrastructure security scanning
- Software Bill of Materials generation
- Security documentation
- Automated artifact generation

The repository is organized according to DevSecOps best practices and is ready for further enhancements.

## Features

- Flask Web Application
- Docker Containerization
- Automated CI/CD Pipeline
- Infrastructure as Code
- Dependency Security Scanning
- Static Code Security Analysis
- Code Quality Checks
- Software Bill of Materials
- Infrastructure Security Validation
- Automated Security Reports

