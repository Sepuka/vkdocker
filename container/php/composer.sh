#!/bin/bash

cd /var/www/app || exit 1

rm -rf ./vendor

./composerw install
