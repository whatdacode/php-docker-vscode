FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    libicu-dev \
    libzip-dev \
    zip \
    git \
    && docker-php-ext-install intl zip pdo pdo_mysql

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html

# Set the environment variable
ENV CI_ENVIRONMENT=development

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

ENTRYPOINT ["entrypoint.sh"]
CMD ["php", "spark", "serve", "--host", "0.0.0.0", "--port", "8080"]