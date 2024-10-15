# Stage 1: Build stage
FROM node:18-alpine AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY . .

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Stage 2: Runtime stage
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy only the necessary files from the build stage
COPY --from=build /app .

# Expose the port the app runs on
EXPOSE 9090

# Command to start the app
CMD ["npm", "start"]







