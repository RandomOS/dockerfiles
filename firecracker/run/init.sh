#!/bin/bash

FIRECRACKER_VERSION="1.9.1"
FIRECTL_VERSION="0.2.0"

apk update
apk add --no-cache bash bash-completion curl wget vim tzdata tini iproute2 util-linux socat
apk cache clean
cp /etc/apk/repositories /etc/apk/repositories.orig
sed -i 's/dl-cdn.alpinelinux.org/mirrors.huaweicloud.com/g' /etc/apk/repositories

rm -rf /tmp/install \
    && mkdir -p /tmp/install \
    && cd /tmp/install \
    && wget -q -O data.tar.gz https://github.com/firecracker-microvm/firecracker/releases/download/v${FIRECRACKER_VERSION}/firecracker-v${FIRECRACKER_VERSION}-x86_64.tgz \
    && tar --strip-components 1 -xf data.tar.gz \
    && cp firecracker-v${FIRECRACKER_VERSION}-x86_64 /usr/local/bin/firecracker \
    && cd /tmp \
    && rm -rf /tmp/install

rm -rf /tmp/install \
    && mkdir -p /tmp/install \
    && cd /tmp/install \
    && wget -q -O firectl https://github.com/firecracker-microvm/firectl/releases/download/v${FIRECTL_VERSION}/firectl-v${FIRECTL_VERSION} \
    && chmod +x firectl \
    && cp firectl /usr/local/bin/firectl \
    && cd /tmp \
    && rm -rf /tmp/install
