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

# Copy composer.json first
COPY composer.json ./

# Configure Composer: Add Asset Packagist and allow Yii2 plugin
RUN composer config repositories.assetpackagist composer https://asset-packagist.org \
    && composer config --no-interaction allow-plugins.yiisoft/yii2-composer true

# Install PHP dependencies
RUN composer install --no-dev --prefer-dist --optimize-autoloader

# Copy the rest of the application
COPY . .

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Expose the app port
EXPOSE 9090

# Start the Yii2 app
CMD ["php", "-S", "0.0.0.0:9090", "-t", "web"]
