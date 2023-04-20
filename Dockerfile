FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y apache2

COPY . /var/www/html/

EXPOSE 8000

CMD ["apachectl", "-D", "FOREGROUND"]

