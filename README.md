# Docker + ghost blog + nginx + mariadb on Raspberry Pi
## Prerequisites
Tested on a Raspberry Pi 3 Model B+ and Raspian 10. I installed everything in /srv, depending on your config you may need to alter some paths.
### Install and run
First install Docker and docker-compose on your Raspberry Pi
If you want to use TLS, build the certbot image in certbot/updateimage.sh
Grab your certificate with
```
docker run -it -p 80:80 -v /srv/docker/ghost/letsencrypt:/etc/letsencrypt certbot certonly -d yourdomain.tld
```
Change the domain name, url and database passwords in docker-compose.yml
Change the domain name in nginx.conf.

Run all three container in foreground with
```
docker-compose up
```
inside ghost directory
Run all three container in background with
```
docker-compose up -d
```
inside ghost directory

