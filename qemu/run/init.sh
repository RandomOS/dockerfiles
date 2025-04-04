#!/bin/bash

arch=$(uname -m)

apk update
apk add --no-cache bash bash-completion curl wget vim tzdata tini iproute2 util-linux socat
apk add --no-cache qemu-img qemu-system-${arch} \
    qemu-hw-display-virtio-vga \
    qemu-hw-display-virtio-vga-gl \
    qemu-hw-display-virtio-gpu \
    qemu-hw-display-virtio-gpu-gl \
    qemu-hw-display-virtio-gpu-pci \
    qemu-hw-display-virtio-gpu-pci-gl \
    qemu-hw-display-qxl \
    qemu-hw-usb-host \
    qemu-hw-usb-redirect \
    qemu-ui-curses \
    qemu-ui-egl-headless \
    qemu-chardev-spice \
    qemu-audio-spice \
    mesa-dri-gallium

if [[ ${arch} == "aarch64" ]]; then
    apk add --no-cache aavmf
elif [[ ${arch} == "x86_64" ]]; then
    apk add --no-cache ovmf
    curl -4skL -o /usr/local/bin/qmp-shell https://github.com/0xef53/qmp-shell/releases/download/v2.0.1/qmp-shell \
        && chmod +x /usr/local/bin/qmp-shell
fi

apk cache clean
cp /etc/apk/repositories /etc/apk/repositories.orig
sed -i 's/dl-cdn.alpinelinux.org/mirrors.huaweicloud.com/g' /etc/apk/repositories
