# Use official PHP + Apache image
FROM php:8.1-apache

# Copy source into webroot
COPY . /var/www/html/

# Ensure files are readable by apache
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 (container)
EXPOSE 80

# Use default apache command from image (runs in foreground)
