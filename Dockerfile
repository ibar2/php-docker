FROM php:8.3.0-apache as builder

RUN apt-get update

RUN apt install libicu-dev -y
RUN docker-php-ext-install intl
RUN docker-php-ext-enable intl
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli
RUN apt install vim -y

CMD ["apache2-foreground"]