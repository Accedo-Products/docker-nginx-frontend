#!/bin/bash
if [ -z "$APP" ]
then
echo "\$APP is empty, please provide app link"
exit 1
else
sed -i 's/APP/'"$APP"'/g' /etc/nginx/nginx.conf
fi

if [ -z "$PORT" ]
then
echo "\$PORT is empty, please provide a port"
exit 1
else
sed -i 's/PORT/'"$PORT"'/g' /etc/nginx/nginx.conf
fi

if [ -z "$URL" ]
then
echo "\$URL is empty, set it"
exit 1
else
sed -i 's/URL/'"$URL"'/g' /etc/nginx/nginx.conf
fi

nginx -g 'daemon off;'
