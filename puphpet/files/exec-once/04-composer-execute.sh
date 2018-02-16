#!/bin/bash
echo "### Executing composer install"
cd /var/www/seoadmin.local/
sudo -H -u composer bash -c 'composer install -o' && wait
echo "### Finished composer install"