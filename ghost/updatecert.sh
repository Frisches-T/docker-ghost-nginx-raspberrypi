#!/bin/bash
docker-compose stop nginx
docker run -it -p 80:80 -v /srv/docker/ghost/letsencrypt:/etc/letsencrypt certbot renew
docker-compose up -d nginx
