# Stage 1 Build
FROM python:3.9-alpine AS builder

WORKDIR /app

COPY hello.py .

RUN python hello.py

# Stage 2 File Build
FROM scratch AS file_stage

WORKDIR /app

COPY --from=builder /app/ /

# Stage 3 Runtime stage
FROM python:3.9-alpine 

WORKDIR /app

COPY --from=file_stage / /app/

CMD ["python", "hello.py"]