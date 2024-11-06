# Stage 1: Build Stage
FROM node:18-alpine AS builder

WORKDIR /app

COPY . .

# Stage 2: Production Stage
FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /app /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
