# Stage 1: Builder
FROM alpine:3.16 as builder

WORKDIR /app

# Debug: Print working directory
RUN echo "=== Builder Stage: Current Working Directory ===" && pwd

# Debug: List contents before copying
RUN echo "=== Builder Stage: Listing /app Before Copying Files ===" && ls -la

COPY index.html .

# Debug: List contents after copying
RUN echo "=== Builder Stage: Listing /app After Copying Files ===" && ls -la

# Stage 2: Serve
FROM nginx:alpine

# Debug: Print working directory
RUN echo "=== Serve Stage: Current Working Directory ===" && pwd

# Debug: List Nginx config directory before copying
RUN echo "=== Serve Stage: Listing /etc/nginx/conf.d Before Copying nginx.conf ===" && ls -la /etc/nginx/conf.d

COPY nginx.conf /etcc/nginx/conf.d/default.conf

# Debug: List Nginx config directory after copying
RUN echo "=== Serve Stage: Listing /etc/nginx/conf.d After Copying nginx.conf ===" && ls -la /etc/nginx/conf.d

# Debug: List Nginx HTML directory before copying
RUN echo "=== Serve Stage: Listing /usr/share/nginx/html Before Copying index.html ===" && ls -la /usr/share/nginx/html

COPY --from=builder /app/index.html /usr/share/nginx/html/

# Debug: List Nginx HTML directory after copying
RUN echo "=== Serve Stage: Listing /usr/share/nginx/html After Copying index.html ===" && ls -la /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
