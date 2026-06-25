This document covers the containerization of the E-commerce Flask application as part of Week 1 deliverables for Member 2 (Application & Container Security).

## Docker Build Process

### Base Image
- `python:3.10-slim` — lightweight official Python image

### Security Measures Applied
- Non-root user `appuser` created and assigned to group `appgroup`
- Application files owned by `appuser:appgroup`
- `USER appuser` instruction ensures container runs as unprivileged user
- `.dockerignore` excludes sensitive files from build context

### Build Command
```bash
docker build -t ecommerce-app:v2 .
```

### Run Command
```bash
docker run -d -p 5000:5000 --name ecommerce-test ecommerce-app:v2
```

## Endpoints Verified
| Endpoint   | Method | Response                          |
|------------|--------|-----------------------------------|
| /          | GET    | Welcome to the E-commerce API     |
| /products  | GET    | List of 3 products with prices    |
| /health    | GET    | {"status": "healthy"}             |

## Security Verification
- Confirmed container runs as non-root user via:
  - `docker inspect` → `"User": "appuser"`
  - `docker exec whoami` → `appuser`
