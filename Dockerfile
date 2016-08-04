# Set nginx base image
FROM nginx

# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf
COPY start-nginx.sh /start-nginx.sh
RUN chmod +x /start-nginx.sh


#CMD ["/bin/bash", "-c", "envsubst '\$FORWARD \$APP \$PORT \$DOMAIN' < /etc/nginx/conf.d/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]
CMD ["/start-nginx.sh"]
