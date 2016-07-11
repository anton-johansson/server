FROM debian:jessie
MAINTAINER Anton Johansson <antoon.johansson@gmail.com>

RUN apt-get update
RUN apt-get -y install apache2
RUN rm /var/www/html/index.html

COPY repo /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
