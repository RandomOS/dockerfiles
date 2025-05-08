#!/bin/bash

FIRECRACKER_VERSION="1.12.0"

arch=$(uname -m)

apk update
apk add --no-cache bash bash-completion curl wget vim tzdata tini iproute2 util-linux socat
apk cache clean
cp /etc/apk/repositories /etc/apk/repositories.orig
sed -i 's/dl-cdn.alpinelinux.org/mirrors.huaweicloud.com/g' /etc/apk/repositories

if [[ ${arch} == "aarch64" ]]; then
    FIRECTL_BINARY="arm64/firectl.gz"
elif [[ ${arch} == "x86_64" ]]; then
    FIRECTL_BINARY="amd64/firectl.gz"
fi

rm -rf /tmp/install \
    && mkdir -p /tmp/install \
    && cd /tmp/install \
    && wget -q -O data.tar.gz https://github.com/firecracker-microvm/firecracker/releases/download/v${FIRECRACKER_VERSION}/firecracker-v${FIRECRACKER_VERSION}-${arch}.tgz \
    && tar --strip-components 1 -xf data.tar.gz \
    && cp firecracker-v${FIRECRACKER_VERSION}-${arch} /usr/local/bin/firecracker \
    && cd /tmp \
    && rm -rf /tmp/install

rm -rf /tmp/install \
    && mkdir -p /tmp/install \
    && cd /tmp/install \
    && wget -q -O firectl.gz https://r.randomk.xyz/ftp/bin/linux/${FIRECTL_BINARY} \
    && gzip -d firectl.gz \
    && chmod +x firectl \
    && cp firectl /usr/local/bin/firectl \
    && cd /tmp \
    && rm -rf /tmp/install
