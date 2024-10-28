# Stage 1
FROM python:latest AS builder
WORKDIR /app

COPY app.py .

# Stage 2
FROM python:latest
WORKDIR /app

COPY --from=builder /app/app.py .

CMD ["python", "app.py"]