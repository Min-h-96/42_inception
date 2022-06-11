FROM debian:buster

RUN apt-get update
RUN apt-get -y install php-mysql php7.3-fpm wget

EXPOSE 9000

COPY ./tools/ /var/www/

RUN chmod +x /var/www/wp_start.sh
RUN bash /var/www/wp_start.sh

CMD ["service php7.3-fpm start"]