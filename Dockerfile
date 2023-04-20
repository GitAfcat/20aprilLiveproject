FROM ubuntu

RUN apt-get update && \
    apt-get install -y apache2

COPY index.html /var/www/html/

EXPOSE 8000

CMD ["/bin/bash", "-c", "systemctl start apache2 && apachectl -DFOREGROUND"]
