### 6. Simple Website with Nginx:

#Create a Multi-Stage Dockerfile for a simple HTML website.
#Use Nginx as a web server in the final stage to host the website.

FROM nginx AS build
WORKDIR /data/www/
COPY simple.html /data/www/
COPY nginx.conf /etc/nginx/

FROM nginx:1.31.4-alpine
WORKDIR /data/www/
COPY --from=build /data/www /data/www/
COPY --from=build /etc/nginx /etc/nginx
EXPOSE 80