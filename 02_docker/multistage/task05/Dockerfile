# Stage 1: Builder
FROM python:3.9-alpine AS builder

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /install

COPY requirements.txt .

RUN apk update && apk add --no-cache build-base \
    && pip install --no-cache-dir --prefix=/install -r requirements.txt \
    && apk del build-base

# Stage 2: Final
FROM python:3.9-alpine

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY --from=builder /install /usr/local
COPY app.py templates/ /app/

EXPOSE 5000

CMD ["python", "app.py"]
