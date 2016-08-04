#!/bin/bash
sed -i 's/APP/'"$APP"'/g' /etc/nginx/nginx.conf
sed -i 's/PORT/'"$PORT"'/g' /etc/nginx/nginx.conf
sed -i 's/DOMAIN/'"$DOMAIN"'/g' /etc/nginx/nginx.conf
sed -i 's/FORWARD/'"$FORWARD"'/g' /etc/nginx/nginx.conf

nginx -g 'daemon off;'
