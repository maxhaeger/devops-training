# Stage 1
FROM python:latest AS builder

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /install
COPY requirements.txt .
RUN pip install --prefix=/install -r requirements.txt

# Stage 2
FROM python:latest 

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY --from=builder /install /usr/local

WORKDIR /app
COPY app.py .
COPY templates/ templates/

EXPOSE 5000

CMD ["python", "app.py"]