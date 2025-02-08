#!/bin/sh

if [[ ! -f /etc/apt/sources.list.orig ]]; then
    cp /etc/apt/sources.list /etc/apt/sources.list.orig
fi

sed -i \
    -e '/openresty.org/d' /etc/apt/sources.list \
    -e '/snapshot.debian.org/d' /etc/apt/sources.list \
    -e 's/deb.debian.org/mirrors.huaweicloud.com/g' /etc/apt/sources.list \
    -e 's/security.debian.org/mirrors.huaweicloud.com/g' /etc/apt/sources.list

apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y bash bash-completion curl wget vim locales tzdata iproute2 less procps netcat-openbsd \
    && apt-get clean \
    && locale-gen en_US.UTF-8 \
    && echo $TZ > /etc/timezone \
    && ln -sf /usr/share/zoneinfo/$TZ /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata
