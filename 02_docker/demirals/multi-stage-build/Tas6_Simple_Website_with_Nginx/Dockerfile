# Stage 1: Use httpd to copy the HTML file
FROM httpd AS builder

# Copy the custom HTML file into the default httpd directory
COPY ./index.html /usr/local/apache2/htdocs/index.html

# Stage 2: Use nginx to serve the website
FROM nginx

# Copy the HTML file from the builder stage to the nginx web directory
COPY --from=builder /usr/local/apache2/htdocs/index.html /usr/share/nginx/html/index.html

# Expose port 80 to be able to access the website
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]




