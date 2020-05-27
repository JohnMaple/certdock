FROM nginx:alpine

MAINTAINER Ethan <934879001@qq.com>

# Install certbot
RUN apk add --no-cache certbot

RUN adduser -D -H -u 5000 -s /bin/sh www
RUN rm /etc/nginx/conf.d/default.conf
ADD nginx.conf /etc/nginx/
ADD app.conf /etc/nginx/sites-available/

VOLUME /var/www

CMD ["nginx"]