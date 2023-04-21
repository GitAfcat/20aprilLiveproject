FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils
RUN service apache2 start
COPY index.html /var/www/html/
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]

