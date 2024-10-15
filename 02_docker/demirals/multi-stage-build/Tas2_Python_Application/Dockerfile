FROM python:3.11-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the Python application into the container
COPY hello.py .

# Stage 2: Runtime stage
FROM python:3.11-slim

# Copy the application from the build stage
COPY --from=build /app/hello.py .

# Command to run the application
CMD ["python", "hello.py"]



