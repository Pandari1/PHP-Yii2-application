FROM php:7.4-fpm

# Install dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev && docker-php-ext-install zip

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /var/www/html

# Copy application code
COPY . .

# Install PHP dependencies
RUN composer install --no-dev --optimize-autoloader

# Expose the port used by the PHP server
EXPOSE 8080

# Start Yii2 application
CMD ["php", "-S", "0.0.0.0:8080", "-t", "web"]
