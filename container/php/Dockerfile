FROM php:7.2-cli
RUN apt-get update && apt-get install -y --no-install-recommends libc-client-dev libkrb5-dev git libzip-dev zip unzip zlib1g-dev
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl
RUN docker-php-ext-install pcntl imap bcmath zip
COPY composer.sh /usr/local/bin
RUN chmod +x /usr/local/bin/composer.sh
COPY tests.sh /usr/local/bin
RUN chmod +x /usr/local/bin/tests.sh
ENTRYPOINT /usr/local/bin/composer.sh