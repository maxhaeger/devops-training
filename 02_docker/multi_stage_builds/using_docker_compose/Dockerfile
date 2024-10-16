# Dockerfile

# Stage 1: Builder
FROM alpine:3.16 as builder
WORKDIR /app
COPY index.html .


# Stage 2: Serve
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/index.html /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
