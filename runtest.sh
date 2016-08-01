#!/bin/bash

docker build -t mardle/nginx-lb .
sleep 5
docker run -e "DOMAIN=dev.viago.io" -e "PORT=8080" -e "APP=localhost" -e "FORWARD=true" --name nginx-lb -p 33000:80 -p 33443:443 --expose 443 --expose 80 -d mardle/nginx-lb
sleep 5
docker logs nginx-lb

docker stop nginx-lb
docker rm nginx-lb
