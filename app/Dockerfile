# ================================
# Stage 1: Builder
# Purpose: Install dependencies in isolated build environment
# This stage is discarded after build — not present in final image
# ================================
FROM python:3.13-slim AS builder

LABEL stage="builder"
LABEL maintainer="Sarbajit Samantaray"
LABEL description="Builder stage - installs Python dependencies"

WORKDIR /build

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir --prefix=/install -r requirements.txt

# ================================
# Stage 2: Production
# Purpose: Minimal runtime image with only what's needed
# Runs as non-root user for security
# ================================
FROM python:3.13-slim AS production

LABEL stage="production"
LABEL maintainer="Sarbajit Samantaray"
LABEL description="Production image - minimal, hardened, non-root"
LABEL security.non-root="true"
LABEL security.multi-stage="true"
LABEL security.cap-drop="ALL"
LABEL security.no-new-privileges="true"

WORKDIR /app

# Copy only installed packages from builder stage
COPY --from=builder /install /usr/local

# Copy application source
COPY app.py .

# Create non-root user and group for security
RUN addgroup --system appgroup && \
    adduser --system --ingroup appgroup appuser && \
    chown -R appuser:appgroup /app && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
           /usr/share/doc/* /usr/share/man/* /tmp/* \
           /root/.cache /home/*/.cache

# Switch to non-root user
USER appuser

# Healthcheck instruction for container orchestration
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD python3 -c "import urllib.request; urllib.request.urlopen('http://localhost:5000/health')"

# Expose application port
EXPOSE 5000

# Start Flask application
CMD ["python3", "app.py"]
