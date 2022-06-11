#!/bin/bash

openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42seoul/OU=Kim/CN=localhost" -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt

chmod 600 /etc/ssl/private/nginx.key /etc/ssl/certs/nginx.crt