# Use PHP with Alpine
FROM php:8.1-fpm-alpine

# Install dependencies
RUN docker-php-ext-install pdo pdo_mysql
RUN apk --update add nginx

# Set working directory
WORKDIR /app

# Copy Laravel project files
COPY . /app

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy and set permissions for the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose port 8000
EXPOSE 8000

# Use the entrypoint script to set permissions and start services
ENTRYPOINT ["/entrypoint.sh"]
