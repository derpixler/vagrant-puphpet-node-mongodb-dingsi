echo "### Install Configs"
#cp /var/www/seoadmin.local/config/autoload/custom.local.php.dist /var/www/seoadmin.local/config/autoload/custom.local.php
sudo -u www-data bash -c 'cp -n /var/www/seoadmin.local/config/autoload/doctrine.local.php.dist /var/www/seoadmin.local/config/autoload/doctrine.local.php'
sudo -u www-data bash -c 'cp -n /var/www/seoadmin.local/config/autoload/local.php.dist /var/www/seoadmin.local/config/autoload/local.php'

echo "### Copy Masterdata Configs"
sudo -u www-data bash -c 'cp -n /var/www/seoadmin.local/vendor/cts/masterdataapiclient/c24cts/masterdata/config/config.default.php.dist /var/www/seoadmin.local/vendor/cts/masterdataapiclient/c24cts/masterdata/config/config.php'

sudo -u www-data bash cp /var/www/seoadmin.local/puphpet/files/composer-keys/index-cli.php /var/www/seoadmin.local/public/index-cli.php

# Doctrine Migrations local.php
sudo -u www-data bash cp /var/www/seoadmin.local/config/cli/seo.php /var/www/seoadmin.local/config/cli/local.php