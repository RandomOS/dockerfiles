#!/bin/bash

CLOUDHYPERVISOR_VERSION="48.0"

arch=$(uname -m)

apk update
apk add --no-cache bash bash-completion curl wget vim tzdata tini iproute2 util-linux socat
apk cache clean
cp /etc/apk/repositories /etc/apk/repositories.orig
sed -i 's/dl-cdn.alpinelinux.org/mirrors.huaweicloud.com/g' /etc/apk/repositories

if [[ ${arch} == "aarch64" ]]; then
    CHREMOTE_BINARY="ch-remote-static-aarch64"
    CLOUDHYPERVISOR_BINARY="cloud-hypervisor-static-aarch64"
    apk add --no-cache aavmf
elif [[ ${arch} == "x86_64" ]]; then
    CHREMOTE_BINARY="ch-remote-static"
    CLOUDHYPERVISOR_BINARY="cloud-hypervisor-static"
    apk add --no-cache ovmf
fi

rm -rf /tmp/install \
    && mkdir -p /tmp/install \
    && cd /tmp/install \
    && wget -q -O ch-remote https://github.com/cloud-hypervisor/cloud-hypervisor/releases/download/v${CLOUDHYPERVISOR_VERSION}/${CHREMOTE_BINARY} \
    && chmod +x ch-remote \
    && cp ch-remote /usr/local/bin/ch-remote \
    && cd /tmp \
    && rm -rf /tmp/install

rm -rf /tmp/install \
    && mkdir -p /tmp/install \
    && cd /tmp/install \
    && wget -q -O cloud-hypervisor https://github.com/cloud-hypervisor/cloud-hypervisor/releases/download/v${CLOUDHYPERVISOR_VERSION}/${CLOUDHYPERVISOR_BINARY} \
    && chmod +x cloud-hypervisor \
    && cp cloud-hypervisor /usr/local/bin/cloud-hypervisor \
    && cd /tmp \
    && rm -rf /tmp/install
