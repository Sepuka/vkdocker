FROM php:7.2-cli
RUN apt-get update && apt-get install -y libc-client-dev libkrb5-dev git
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl
RUN docker-php-ext-install pcntl imap bcmath
WORKDIR /var/www/app
ENTRYPOINT ./composerw install