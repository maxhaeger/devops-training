# Optimized
# FROM golang:alpine as builder
# WORKDIR /app
# COPY hello.go .
# RUN go build -o ./myapp ./hello.go

# FROM alpine
# WORKDIR /app
# COPY --from=builder /app/myapp .
# CMD ["./myapp"]

# Unoptimized
FROM golang:alpine
WORKDIR /app
COPY hello.go .
RUN go build -o ./myapp ./hello.go
CMD ["./myapp"]