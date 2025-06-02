FROM alpine:3.22
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

ENV TZ=Asia/Shanghai

COPY etc/ /etc/
COPY root/ /root/

RUN apk update && apk add --no-cache bash bash-completion curl vim tzdata \
    && cp /etc/apk/repositories /etc/apk/repositories.orig \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.huaweicloud.com/g' /etc/apk/repositories

CMD ["tail", "-f", "/dev/null"]
