FROM debian:latest

MAINTAINER Stephan Rösner

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \ 
    certbot \
        && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

#Exporse Port 80 for temporary webserver
EXPOSE 80

#run certbot in container
CMD ["/usr/bin/certbot"]
