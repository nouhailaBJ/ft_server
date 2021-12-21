 #!/bin/sh
chown -R mysql:mysql /var/lib/mysql
service nginx restart 
service mysql restart 
service php7.3-fpm start
/bin/bash