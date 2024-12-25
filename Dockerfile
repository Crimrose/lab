FROM php:8.4.2-apache
# Install any required PHP extensions, e.g., pdo_mysql
RUN docker-php-ext-install pdo pdo_mysql

# Copy the source code into the container
COPY src/ /var/www/html/

# Expose port 80 (Apache)
EXPOSE 80