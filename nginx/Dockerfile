FROM randomos/alpine-lab:3.12
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

COPY etc/ /etc/

RUN wget -q -O /usr/sbin/nginx.gz http://rocky.evai.pl/ftp/bin/alpine/amd64/nginx-plus.gz \
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
