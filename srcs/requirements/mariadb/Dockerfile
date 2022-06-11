FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server php-mysql php-mbstring
EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/db.sql /var/www/

RUN service mysql start && mysql < /var/www/db.sql && rm -rf /var/www/db.sql

CMD [ "mysqld" ]