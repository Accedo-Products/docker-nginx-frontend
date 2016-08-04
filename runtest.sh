
docker build -t mardle/nginx-lb .
docker run -e "URL=dev.viago.io" -e "PORT=8080" -e "APP=localhost" -e "FORWARD=true" --name nginx-lb -p 33000:80 -p 33443:443 -d mardle/nginx-lb
docker exec -i -t nginx-lb cat /etc/nginx/nginx.conf
sleep 5
docker logs nginx-lb
docker stop nginx-lb
docker rm nginx-lb
