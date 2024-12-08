# Stage 1
FROM python:3.9-slim AS base

WORKDIR /app

COPY app.py /app/

RUN pip install flask

# Stage 2
FROM base 

WORKDIR /app

COPY app.py /app/

RUN mkdir /app/files

EXPOSE 5001

CMD ["python", "app.py"]