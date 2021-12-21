 #!/bin/sh
apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip php-fpm php-mysql 
service php7.3-fpm start
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz && \
tar xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz && \
rm phpMyAdmin-4.9.0.1-all-languages.tar.gz && \
mv phpMyAdmin-4.9.0.1-all-languages phpmyadmin && \
mv phpmyadmin/ /var/www/html && \
cd /var/www/html/phpmyadmin && \
mv config.sample.inc.php config.inc.php && \
mkdir tmp && chmod 777 tmp
