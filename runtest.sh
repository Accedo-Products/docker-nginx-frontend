#!/bin/bash

docker build -t mardle/nginx-lb .
sleep 5
docker run -e "PORT=8080" -e "APP=web" -e "FORWARD=true" --name nginx-lb -p 33000:80 -p 33443:443 --expose 443 --expose 80 -d mardle/nginx-lb
sleep 10
docker exec -i -t nginx-lb cat /etc/nginx/nginx.conf
docker logs nginx-lb

docker stop nginx-lb
docker rm nginx-lb
