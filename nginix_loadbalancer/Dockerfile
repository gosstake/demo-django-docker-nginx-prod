FROM ubuntu:14.04

RUN apt-get install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./uwsgi_params /etc/nginx/uwsgi_params

CMD nginx