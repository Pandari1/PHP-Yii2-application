FROM php:7.4-fpm

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    curl \
    && docker-php-ext-install zip pdo pdo_mysql mbstring

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy composer.json only (for dependency installation and cache)
COPY composer.json ./

# Configure Composer to use Asset Packagist instead of fxp plugin
RUN composer config repositories.assetpackagist composer https://asset-packagist.org

# Install dependencies without dev packages
RUN composer install --no-dev --prefer-dist --optimize-autoloader

# Copy rest of the application source code
COPY . .

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html

# Expose application port
EXPOSE 9090

# Start the Yii2 app with PHP's built-in server
CMD ["php", "-S", "0.0.0.0:9090", "-t", "web"]
