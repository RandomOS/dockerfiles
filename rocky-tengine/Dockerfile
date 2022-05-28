FROM randomos/alpine-lab:latest
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

COPY etc/ /etc/

RUN wget -q -O /usr/sbin/nginx.gz http://rocky.evai.pl/ftp/bin/alpine/amd64/tengine.gz \
    && gzip -d /usr/sbin/nginx.gz \
    && chmod +x /usr/sbin/nginx \
    && mkdir -p /var/log/nginx \
    && mkdir -p /var/lib/nginx/body \
    && mkdir -p /var/lib/nginx/fastcgi \
    && mkdir -p /var/lib/nginx/proxy \
    && mkdir -p /var/lib/nginx/scgi \
    && mkdir -p /var/lib/nginx/uwsgi \
    && mkdir -p /usr/lib/nginx/modules

CMD ["nginx", "-g", "daemon off;"]
