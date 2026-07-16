# Week 3 - Container Hardening Documentation

## Overview
This document covers the container hardening measures applied during Week 3
of the E-commerce IaC Pipeline project (Member 2 - Application & Container Security).

## Hardening Measures Applied

### 1. Multi-Stage Docker Build
- **Stage 1 (Builder):** Installs all dependencies in an isolated environment
- **Stage 2 (Production):** Copies only compiled artifacts — no build tools in final image
- **Result:** Reduced attack surface by excluding pip, build tools, and dev dependencies

### 2. Non-Root User Execution
- Created system group `appgroup` and system user `appuser`
- All application files owned by `appuser:appgroup`
- Container runs as `appuser` — confirmed via `docker exec whoami`
- **Result:** Even if app is compromised, attacker has no root privileges

### 3. Package and Cache Cleanup
- Removed `/var/lib/apt/lists/*` — apt package lists
- Removed `/var/cache/apt/*` — apt cache
- Removed `/usr/share/doc/*` — documentation
- Removed `/usr/share/man/*` — man pages
- Removed `/tmp/*` — temporary files
- **Result:** Smaller image, fewer files for attacker to leverage

### 4. Base Image Upgrade
- Upgraded from `python:3.10-slim` (had CVEs) to `python:3.13-slim` (Debian 13.5)
- **Result:** 0 CRITICAL/HIGH vulnerabilities confirmed by Trivy

### 5. Dockerfile Labels and Comments
- Added `LABEL` instructions for stage, maintainer, description
- Added inline comments explaining each Dockerfile section
- **Result:** Improved maintainability and auditability

## Before vs After CVE Comparison

| Metric | Before (python:3.10-slim) | After (python:3.13-slim) |
|--------|--------------------------|--------------------------|
| CRITICAL CVEs | Multiple | 0 |
| HIGH CVEs | Multiple | 0 |
| Runs as root | Yes | No (appuser) |
| Build tools in image | Yes | No (multi-stage) |
| Apt cache present | Yes | No (cleaned) |

## Trivy Scan Results (Week 3)
- Image: `ecommerce-app:latest`
- Base OS: Debian 13.5
- Python packages scanned: 9
- CRITICAL vulnerabilities: 0 ✅
- HIGH vulnerabilities: 0 ✅
- Secrets found: 0 ✅

## Docker Image Layers (Week 3)
Stage 1 (Builder) → discarded after build
Stage 2 (Production):

python:3.13-slim base
Flask + dependencies (copied from builder)
app.py (application source)
appuser/appgroup (security user)
Cleaned caches and docs
## Security Flags for Runtime
The following flags should be used when running the container in production:
```bash
docker run -d \
  --name ecommerce-app \
  --user appuser \
  --cap-drop ALL \
  --security-opt no-new-privileges \
  -p 5000:5000 \
  ecommerce-app:latest
```
