FROM randomos/alpine-lab:linux-amd64
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

COPY etc/ /etc/

RUN wget -q -O /usr/sbin/nginx.gz https://geocities.ws/rocky/bin/alpine/amd64/nginx-plus.gz \
    && gzip -d /usr/sbin/nginx.gz \
    && chmod +x /usr/sbin/nginx \
    && mkdir -p /var/log/nginx \
    && mkdir -p /var/cache/nginx \
    && mkdir -p /usr/lib/nginx/modules \
    && apk upgrade \
    && apk add --no-cache \
        coreutils \
        libacl \
        libattr \
        openssl \
        pcre

CMD ["nginx", "-g", "daemon off;"]
