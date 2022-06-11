FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx openssl

EXPOSE 443

COPY ./conf/default /etc/nginx/sites-available/default
COPY ./tools/nginx.sh /var/www

RUN chmod +x /var/www/nginx.sh
RUN bash /var/www/nginx.sh

CMD [ "nginx", "-g", "daemon off;" ]