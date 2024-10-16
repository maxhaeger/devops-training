# Step 1: Build the application
FROM golang:1.20 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy go.mod and go.sum files for dependency caching
COPY go.mod go.sum ./
RUN go mod download

# Copy the source code
COPY . .

# Build the Go application
RUN CGO_ENABLED=0 GOOS=linux go build -o myapp .

# Step 2: Create a minimal image with only the built binary
FROM alpine:latest

# Set the working directory in the new image
WORKDIR /root/

# Copy the binary from the builder stage
COPY --from=builder /app/myapp .

# Expose the application port (if necessary)
EXPOSE 8080

# Command to run the application
CMD ["./myapp"]
