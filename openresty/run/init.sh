#!/bin/bash

apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y bash bash-completion curl wget vim locales tzdata iproute2 less procps netcat-openbsd \
    && apt-get clean \
    && locale-gen en_US.UTF-8 \
    && echo $TZ >/etc/timezone \
    && ln -sf /usr/share/zoneinfo/$TZ /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata

if [[ ! -f /etc/apt/sources.list.orig ]]; then
    cp /etc/apt/sources.list /etc/apt/sources.list.orig
fi

sed -i \
    -e 's/archive.ubuntu.com/mirrors.huaweicloud.com/g' \
    -e 's/security.ubuntu.com/mirrors.huaweicloud.com/g' /etc/apt/sources.list

cat <<'EOF' >/etc/openresty/nginx.conf
user nobody nogroup;
worker_processes 1;
pid /var/run/openresty.pid;
pcre_jit on;

events {
    worker_connections 1024;
    multi_accept on;
}
EOF
