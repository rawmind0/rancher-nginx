FROM rawmind/rancher-base:0.0.1-1
MAINTAINER Raul Sanchez <rawmind@gmail.com>

# Install and configure kafka
RUN apk add --update nginx && rm -rf /var/cache/apk/* \
  && mkdir -p /tmp/nginx/client-body
COPY nginx.conf /etc/nginx/nginx.conf

# Add start 
ADD start.sh /usr/bin/start.sh
RUN chmod +x /usr/bin/start.sh

ENTRYPOINT ["/usr/bin/start.sh"]
