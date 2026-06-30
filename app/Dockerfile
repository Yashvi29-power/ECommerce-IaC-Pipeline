# ================================
# Stage 1: Builder
# ================================
FROM python:3.13-slim AS builder

WORKDIR /build

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir --prefix=/install -r requirements.txt

# ================================
# Stage 2: Production
# ================================
FROM python:3.13-slim AS production

WORKDIR /app

COPY --from=builder /install /usr/local

COPY app.py .

RUN addgroup --system appgroup && \
    adduser --system --ingroup appgroup appuser && \
    chown -R appuser:appgroup /app && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/* /usr/share/doc/* /usr/share/man/* /tmp/*

USER appuser

EXPOSE 5000

CMD ["python3", "app.py"]
