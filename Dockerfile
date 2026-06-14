FROM php:8.4-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html

ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["apache2-foreground"]
