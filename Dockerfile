FROM ubuntu
RUN echo 'Creating container using Dockerfile' > /tmp/readme
RUN apt-get update
RUN apt-get -y install apache2
COPY local.html /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
