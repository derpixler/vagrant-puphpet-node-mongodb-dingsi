if [ ! -d "/home/composer/.ssh/" ]; then
    if [ ! -e "/home/composer/.ssh/id_rsa" ]; then
        mkdir -p /home/composer/.ssh/
        chown composer:composer /home/composer/.ssh
        chmod 0700 /home/composer/.ssh
        cp /var/www/seoadmin.local/puphpet/files/composer-keys/id_rsa /home/composer/.ssh/
        chmod 0600 /home/composer/.ssh/id_rsa
        cp /var/www/seoadmin.local/puphpet/files/composer-keys/known_hosts /home/composer/.ssh/
        chmod 0644 /home/composer/.ssh/known_hosts
        chown composer:composer /home/composer/.ssh/*
        echo "Composer Keys copied"
    fi
else
    echo "Composer Keys already exist"
fi