#!/bin/sh

wget -q -O /etc/apk/keys/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub

printf "https://pkgs.nginx.com/plus/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main\n" | tee -a /etc/apk/repositories
printf "https://pkgs.nginx.com/modsecurity/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main\n" | tee -a /etc/apk/repositories

apk add --no-cache \
    nginx-plus \
    nginx-plus-module-brotli \
    nginx-plus-module-encrypted-session \
    nginx-plus-module-fips-check \
    nginx-plus-module-geoip \
    nginx-plus-module-geoip2 \
    nginx-plus-module-headers-more \
    nginx-plus-module-image-filter \
    nginx-plus-module-lua \
    nginx-plus-module-modsecurity \
    nginx-plus-module-ndk \
    nginx-plus-module-njs \
    nginx-plus-module-opentracing \
    nginx-plus-module-passenger \
    nginx-plus-module-prometheus \
    nginx-plus-module-rtmp \
    nginx-plus-module-set-misc \
    nginx-plus-module-subs-filter \
    nginx-plus-module-xslt \
    nginx-plus-module-auth-spnego

sed -i '/pkgs.nginx.com/d' /etc/apk/repositories
rm -f /etc/apk/cert.* /etc/apk/keys/nginx_signing.rsa.pub
