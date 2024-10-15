# Stage 1: Build the Go application
FROM openjdk:17-jdk-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code into the container
COPY HelloWorld.java .

# Build the Go application without Go modules
RUN javac HelloWorld.java

# Stage 2: Run the Go application
FROM openjdk:17-jdk-slim

# Copy the binary from the builder stage
COPY --from=build /app/HelloWorld.class .

# Command to run the application
CMD ["java", "HelloWorld"]



