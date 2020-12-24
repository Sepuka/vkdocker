#!/bin/bash

cd /var/www/app || exit 1

case $# in
    1) REAL_BACKTRACE=1 vendor/bin/phpunit --filter "$1" ;;
    *) ./vendor/bin/paratest ;;
esac
