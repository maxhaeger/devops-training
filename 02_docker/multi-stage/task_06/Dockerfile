FROM node:14 as builder
WORKDIR /app
COPY index.html .

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=builder /app/index.html .
EXPOSE 80