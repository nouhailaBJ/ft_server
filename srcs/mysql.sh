 #!/bin/sh
cd /tmp && \
export DEBIAN_FRONTEND=noninteractive && \
echo "mysql-apt-config mysql-apt-config/select-server select mysql-5.7" | /usr/bin/debconf-set-selections && \
echo "mysql-server mysql-server/root_password password nouhaila" |  debconf-set-selections && \
echo "mysql-server mysql-server/root_password_again password nouhaila" |  debconf-set-selections && \
wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb && \
dpkg -i mysql-apt-config_0.8.13-1_all.deb && \
apt update -y && \
apt install -y mysql-server
chown -R mysql:mysql /var/lib/mysql && \
service mysql start && \
mysql -u root -e "CREATE USER 'nouhaila'@'localhost' IDENTIFIED BY 'nouhaila'" && \
mysql -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'nouhaila'@'localhost'" && \
mysql -u root -e "CREATE DATABASE wordpress" && \
mysql -u root -e "CREATE DATABASE phpmyadmin" && \
mysql -u root -e "FLUSH PRIVILEGES" && \
mysql -u root wordpress < /tmp/wordpress.sql
mysql -u root phpmyadmin < /tmp/phpmyadmin.sql
