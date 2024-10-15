# Build stage
FROM httpd AS builder

# Copy index.html from the local directory to the Apache directory in the image
COPY ./index.html /usr/local/apache2/htdocs/index.html

# Debug: Check if the file was copied successfully
RUN echo "Checking if index.html was copied..." && \
    if [ -f /usr/local/apache2/htdocs/index.html ]; then \
        echo "index.html copied successfully"; \
    else \
        echo "index.html copy failed" && exit 1; \
    fi

# Final stage
FROM nginx

# Copy the index.html from the builder stage to the Nginx HTML directory
COPY --from=builder /usr/local/apache2/htdocs/index.html /usr/share/nginx/html/index.html

# Debug: Check if the file was copied successfully
RUN echo "Checking if index.html was copied to Nginx..." && \
    if [ -f /usr/share/nginx/html/index.html ]; then \
        echo "index.html copied to Nginx successfully"; \
    else \
        echo "index.html copy to Nginx failed" && exit 1; \
    fi

# Expose port 80 for the web server
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
