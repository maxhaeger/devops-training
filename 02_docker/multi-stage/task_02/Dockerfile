FROM python:3.8 as builder
WORKDIR /app
COPY hello.py .
COPY neue_datei.txt .


FROM python:3.8-slim
WORKDIR /app
COPY --from=builder /app .
CMD ["python", "hello.py"]
