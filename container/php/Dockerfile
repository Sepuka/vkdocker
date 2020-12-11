FROM php:7.2-cli
RUN apt-get update && apt-get install -y libc-client-dev libkrb5-dev git
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl
RUN docker-php-ext-install pcntl imap bcmath
COPY composer.sh /usr/local/bin
RUN chmod +x /usr/local/bin/composer.sh
COPY tests.sh /usr/local/bin
RUN chmod +x /usr/local/bin/tests.sh
ENTRYPOINT /usr/local/bin/composer.sh