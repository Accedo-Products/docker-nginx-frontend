# Set nginx base image
FROM nginx

# Copy custom configuration file from the current directory
COPY nginx.conf.template /etc/nginx/conf.d/nginx.conf.template

CMD ["/bin/bash", "-c", "envsubst < /etc/nginx/conf.d/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]
