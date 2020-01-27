# Extending the nimmis/apache-php5 image
FROM php:7.4.1-apache

RUN a2enmod rewrite
COPY config/apache2/apache2.conf /etc/apache2/apache2.conf
RUN docker-php-ext-install pdo pdo_mysql

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"] 
