#!/bin/bash

wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
mv wordpress /var/www/html/

mv /var/www/wp-config.php /var/www/html/wordpress/

chown -R www-data:www-data /var/www/html/wordpress