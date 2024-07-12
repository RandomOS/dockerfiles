#!/bin/bash

arch=$(uname -m)

apk update
apk add --no-cache bash bash-completion curl wget vim tzdata tini iproute2
apk add --no-cache ovmf qemu-img qemu-system-${arch} \
    qemu-hw-display-virtio-vga \
    qemu-hw-display-virtio-vga-gl \
    qemu-hw-display-virtio-gpu \
    qemu-hw-display-virtio-gpu-gl \
    qemu-hw-display-qxl \
    qemu-ui-egl-headless \
    qemu-chardev-spice \
    mesa-dri-gallium

if [[ ${arch} == "x86_64" ]]; then
    curl -4skL -o /usr/local/bin/qmp-shell https://github.com/0xef53/qmp-shell/releases/download/v2.0.1/qmp-shell \
        && chmod +x /usr/local/bin/qmp-shell
fi

sed -i 's/dl-cdn.alpinelinux.org/mirrors.huaweicloud.com/g' /etc/apk/repositories
