# Stage 1: Build the Go application
FROM golang:1.20 as builder

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code into the container
COPY . .

# Build the Go application without Go modules
RUN go build -o /hello-go hello.go

# Stage 2: Run the Go application
FROM debian:buster-slim

# Copy the binary from the builder stage
COPY --from=builder /hello-go /hello-go

# Command to run the application
CMD ["/hello-go"]



