FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx openssl php7.3-fpm

EXPOSE 443

COPY ./conf/default /etc/nginx/sites-available/default
COPY ./tools/nginx.sh /var/www

RUN chmod +x /var/www/nginx.sh

ENTRYPOINT [ "/var/www/nginx.sh" ]

CMD [ "nginx", "-g", "daemon off;" ]