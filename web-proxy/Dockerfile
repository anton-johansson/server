FROM debian:jessie
MAINTAINER Anton Johansson <antoon.johansson@gmail.com>

RUN apt-get update
RUN apt-get install -y nginx

COPY apt.anton-johansson.com /etc/nginx/sites-available/apt.anton-johansson.com
RUN ln -s /etc/nginx/sites-available/apt.anton-johansson.com /etc/nginx/sites-enabled/apt.anton-johansson.com

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
