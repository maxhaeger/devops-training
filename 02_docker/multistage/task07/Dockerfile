# IMPORTANT: Use following command to build: DOCKER_BUILDKIT=0 docker build -t name .
# Stage 1
FROM python:alpine AS func1
WORKDIR /app .
COPY app.py .

RUN python -u -c "from app import func1; func1()"

# Stage 2 
FROM func1 AS func2 
COPY app.py .

RUN python -u -c "from app import func2; func2()"

# Stage 3
FROM func2 AS func3
COPY app.py .

RUN python -u -c "from app import func3; func3()"

# Stage 4
FROM func3 AS func4 
COPY app.py . 

RUN python -u -c "from app import func4; func4()"

# Stage 5
FROM func4
COPY app.py . 

RUN python -u -c "from app import func5; func5()"

CMD ["python", "app.py"]