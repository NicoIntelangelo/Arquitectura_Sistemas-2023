FROM ubuntu:latest

RUN apt-get update && apt-get install -y vim

RUN apt-get update

RUN apt-get install -y apache2

COPY index.html /var/www/html/index.html

ENTRYPOINT ["/bin/bash"]

CMD ["apache2ctl", "-D", "FOREGROUND"]
