#!/bin/sh

# Fix permissions
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html/storage
chmod -R 755 /var/www/html/bootstrap/cache

# Start PHP-FPM and Nginx
php-fpm & nginx -g 'daemon off;'
