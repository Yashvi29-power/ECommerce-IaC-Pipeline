# Security Policy

## Static Application Security Testing

The project uses Bandit to perform Static Application Security Testing (SAST).

### Security Checks

* Hardcoded credentials
* Insecure subprocess execution
* Code injection risks
* Weak security configurations

### Pipeline Enforcement

Every push triggers:

1. Dependency Installation
2. Security Scan
3. Application Verification
4. Docker Image Build

Builds fail automatically if critical security findings are detected.

### Exceptions

The Flask development server binds to 0.0.0.0 for Docker compatibility.

This finding is documented and suppressed using:

# nosec B104
