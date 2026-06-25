# Week 2 Day 1

## Dependency Security Scanning

### Objective

Implemented dependency vulnerability scanning using Safety.

### Features

* Automated dependency analysis
* Detection of known CVEs
* Integrated with GitHub Actions

### Pipeline Flow

Install Dependencies
→ Dependency Scan
→ Bandit SAST
→ Verify Application
→ Docker Build
→ Upload Artifact

### Outcome

The CI pipeline now checks both the application code and third-party dependencies before building the Docker image.
