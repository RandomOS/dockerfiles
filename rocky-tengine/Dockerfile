FROM randomos/alpine-lab:linux-amd64
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

COPY etc/ /etc/

RUN wget -q -O /usr/sbin/nginx.gz https://t.cn/A6PHwSq6 \
    && gzip -d /usr/sbin/nginx.gz \
    && chmod +x /usr/sbin/nginx \
    && mkdir -p /var/log/nginx \
    && mkdir -p /var/lib/nginx/body \
    && mkdir -p /var/lib/nginx/fastcgi \
    && mkdir -p /var/lib/nginx/proxy \
    && mkdir -p /var/lib/nginx/scgi \
    && mkdir -p /var/lib/nginx/uwsgi

CMD ["nginx", "-g", "daemon off;"]
