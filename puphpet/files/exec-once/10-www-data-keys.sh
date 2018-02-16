if [ ! -d "/var/www/.ssh" ]; then
    if [ ! -e "/var/www/.ssh/id_rsa" ]; then
        mkdir -p /var/www/.ssh/
        chown www-data:www-data /var/www/.ssh
        chmod 0700 /var/www/.ssh

        cp /var/www/seoadmin.local/puphpet/files/composer-keys/id_rsa /var/www/.ssh/
        chown www-data:www-data /var/www/.ssh/id_rsa
        chmod 0600 /var/www/.ssh/id_rsa

        cp /var/www/seoadmin.local/puphpet/files/composer-keys/known_hosts /var/www/.ssh/
        chmod 0644 /var/www/.ssh/known_hosts
        chown www-data:www-data /home/composer/.ssh/known_hosts

        echo "### www-data ssh key copied"
    else
        echo "### www-data ssh key already exists"
    fi
else
    echo "### www-data ssh key already exists"
fi