An enterprise-grade DevSecOps pipeline for a containerized e-commerce application, integrating SAST, container scanning, IaC security, and DAST across a fully automated CI/CD workflow.
## Team Structure
| Member | Role |
|--------|------|
| Member 1 (Yashvi) | Team Lead & CI/CD Security Integration |
| Member 2 (Sarbajit) | Application & Container Security |
| Member 3 (Harshita) | Infrastructure as Code Security |
| Member 4 (Kaish) | Deployment, Reporting & Documentation |

## Branch Strategy
## Member 2 - Container Security Setup

### Prerequisites
- Docker installed and running
- Python 3.10+

### Build Docker Image
```bash
cd app
docker build -t ecommerce-app:v2 .
```

### Run Container
```bash
docker run -d -p 5000:5000 --name ecommerce-test ecommerce-app:v2
```

### Test Endpoints
```bash
curl http://localhost:5000/
curl http://localhost:5000/products
curl http://localhost:5000/health
```

### Security Features
- Non-root user execution (appuser)
- Minimal base image (python:3.10-slim)
- Build context exclusions via .dockerignore

## Technology Stack
Python, Docker, GitHub Actions, SonarQube, Trivy, Terraform, Checkov, TFSec
