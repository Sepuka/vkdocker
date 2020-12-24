FROM php:7.2-cli
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  libc-client-dev libkrb5-dev git libzip-dev zip unzip zlib1g-dev libmemcached-dev \
  && pecl install memcached-3.1.5
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl
RUN docker-php-ext-install pcntl imap bcmath zip
RUN docker-php-ext-enable memcached
COPY composer.sh /usr/local/bin
RUN chmod +x /usr/local/bin/composer.sh
COPY tests.sh /usr/local/bin
RUN chmod +x /usr/local/bin/tests.sh
RUN ln /usr/local/bin/php /usr/local/bin/php7.2
ENTRYPOINT /usr/local/bin/composer.sh