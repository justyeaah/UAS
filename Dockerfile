FROM php:8.2-apache

RUN apt-get update && \
    apt-get install -y libpq-dev && \
    docker-php-ext-install mysqli pdo pdo_mysql pgsql pdo_pgsql

RUN a2enmod rewrite

WORKDIR /var/www/html
COPY . /var/www/html
