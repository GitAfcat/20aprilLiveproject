FROM ubuntu

RUN apt-get update && \
    apt-get install -y apache2

COPY mywebsite /var/www/html/

EXPOSE 8000

RUN sudo service apache2 start

CMD ["/bin/bash", "-c", "systemctl start apache2 && apachectl -DFOREGROUND"]
