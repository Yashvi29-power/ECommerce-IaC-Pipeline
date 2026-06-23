FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 5000

CMD ["python3", "app.py"]
