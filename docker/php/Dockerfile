FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpq-dev \
    libzip-dev \
    libicu-dev \
    && docker-php-ext-install pdo pdo_pgsql intl zip

COPY php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html

# Install Composer inside container
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
