# Deployment Guide

## Project Overview

The ECommerce-IaC-Pipeline project demonstrates the implementation of a secure CI/CD pipeline for a Flask-based web application using DevSecOps practices.

---

## Project Structure

- app/ – Flask application
- docker/ – Docker configuration
- terraform/ – Infrastructure as Code
- docs/ – Project documentation
- reports/ – Generated security reports
- .github/workflows/ – GitHub Actions workflow

---

## Local Setup

Clone the repository:

```bash
git clone <repository-url>
cd ECommerce-IaC-Pipeline
```

Create a virtual environment:

```bash
python3 -m venv .venv
source .venv/bin/activate
```

Install dependencies:

```bash
pip install -r app/requirements.txt
```

---

## Running the Application

```bash
python app/app.py
```

The application starts on:

```
http://localhost:5000
```

---

## Docker Build

```bash
docker build -t ecommerce-app -f docker/Dockerfile .
```

---

## Security Controls

The project includes:

- Dependency Vulnerability Scanning using pip-audit
- Static Application Security Testing using Bandit
- Code Quality Analysis using Flake8
- Infrastructure Validation using Terraform
- Infrastructure Security Scanning using Checkov
- Software Bill of Materials (SBOM) Generation
- Automated Security Artifact Upload

---

## GitHub Actions Pipeline

The workflow automatically performs:

1. Checkout repository
2. Install dependencies
3. Dependency vulnerability scan
4. Bandit security scan
5. Flake8 code quality check
6. Application verification
7. Docker image build
8. SBOM generation
9. Terraform validation
10. Checkov scan
11. Upload security artifacts

---

## Reports

Generated reports are stored in:

```
reports/
```

including:

- SBOM
- Security summary
- Pipeline reports

---

## Conclusion

The project demonstrates the integration of security testing and infrastructure validation into an automated CI/CD workflow following DevSecOps best practices.