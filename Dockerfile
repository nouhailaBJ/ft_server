FROM debian:buster

MAINTAINER nouhaila

EXPOSE 80 443

ADD /srcs/start.sh /usr/local/bin/start.sh
RUN chmod 777 /usr/local/bin/start.sh
RUN bash start.sh

COPY /srcs/wordpress.sql /tmp
COPY /srcs/phpmyadmin.sql /tmp

ADD /srcs/mysql.sh /usr/local/bin/mysql.sh
RUN chmod 777 /usr/local/bin/mysql.sh
RUN bash mysql.sh

ADD /srcs/phpmyadmin.sh /usr/local/bin/phpmyadmin.sh
RUN chmod 777 /usr/local/bin/phpmyadmin.sh
RUN bash phpmyadmin.sh

COPY /srcs/wordpress /etc/nginx/sites-available

RUN ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled && \
	wget https://wordpress.org/latest.tar.gz -P /tmp && \
	cd /var/www/html && \
	tar xzf /tmp/latest.tar.gz && \
	mv wordpress/* /var/www/html && \
	rm index.nginx-debian.html && \
	apt install curl -y && \
	curl -s https://api.wordpress.org/secret-key/1.1/salt/ && \
	chown -R www-data:www-data /var/www/html


RUN mkdir /etc/nginx/ssl

COPY /srcs/nginx.crt /etc/nginx/ssl
COPY /srcs/nginx.key /etc/nginx/ssl

COPY /srcs/default /etc/nginx/sites-available
COPY /srcs/config.inc.php /var/www/html/phpmyadmin
COPY /srcs/php.ini /etc/php/7.3/fpm
COPY /srcs/wp-config.php /var/www/html

COPY /srcs/database.sh /
CMD [ "bash", "./database.sh" ]