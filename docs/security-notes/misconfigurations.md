# Security Misconfigurations Prepared for Testing

## Misconfiguration 1
SSH port 22 is open to the Internet (0.0.0.0/0).

Purpose:
To demonstrate detection of insecure network access.

---

## Misconfiguration 2
HTTP port 80 is publicly accessible.

Purpose:
Used for security scanning demonstrations.

---

## Misconfiguration 3
S3 Public Access Block is disabled.

Purpose:
Allows Checkov/TFSec to detect insecure bucket settings.

---

## Misconfiguration 4
S3 Bucket Versioning is not enabled.

Purpose:
Demonstrates missing data protection.

---

## Misconfiguration 5
Server-side encryption is not configured.

Purpose:
Allows security tools to report missing encryption.