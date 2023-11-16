FROM alpine:3.18
LABEL "maintainer"="gaoyang <qiminggaoyang@yunify.com>"

ENV LANG en_US.UTF-8
ENV TZ Asia/Shanghai

COPY root/ /root/

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.huaweicloud.com/g' /etc/apk/repositories \
    && apk update && apk add --no-cache bash bash-completion curl vim tzdata tini iproute2 \
    && apk add --no-cache ovmf qemu-img qemu-system-x86_64 \
        qemu-hw-display-virtio-vga \
        qemu-hw-display-virtio-vga-gl \
        qemu-hw-display-virtio-gpu \
        qemu-hw-display-virtio-gpu-gl \
        qemu-hw-display-qxl \
        qemu-ui-egl-headless \
        qemu-chardev-spice \
        mesa-dri-gallium

ENTRYPOINT ["tini", "--"]

CMD ["tail", "-f", "/dev/null"]
