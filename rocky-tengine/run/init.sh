#!/bin/bash

if [[ $(arch) == "aarch64" ]]; then
    arch="arm64"
elif [[ $(arch) == "armv7l" ]]; then
    arch="arm7"
else
    arch="amd64"
fi

wget -q -O /usr/sbin/nginx.gz https://r.randomk.xyz/ftp/bin/alpine/${arch}/tengine.gz \
    && gzip -d /usr/sbin/nginx.gz \
    && chmod +x /usr/sbin/nginx \
    && mkdir -p /var/log/nginx \
    && mkdir -p /var/lib/nginx/body \
    && mkdir -p /var/lib/nginx/fastcgi \
    && mkdir -p /var/lib/nginx/proxy \
    && mkdir -p /var/lib/nginx/scgi \
    && mkdir -p /var/lib/nginx/uwsgi \
    && mkdir -p /usr/lib/nginx/modules
