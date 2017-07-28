#!/bin/sh
set -x
cd /src
sudo mkdir -pv storage storage/framework/views storage/app storage/framework/sessions storage/framework/cache
chmod 777 -R storage
chown -R www-data:www-data storage
sudo -u www-data php artisan migrate -n --force
sudo -u www-data php artisan db:seed -n --force