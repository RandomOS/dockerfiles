FROM alpine:3.10
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

ENV TZ Asia/Shanghai

COPY etc/ /etc/
COPY root/ /root/

RUN echo 'https://mirrors.aliyun.com/alpine/v3.10/main' > /etc/apk/repositories \
    && echo 'https://mirrors.aliyun.com/alpine/v3.10/community' >> /etc/apk/repositories \
    && apk update && apk add --no-cache bash bash-completion curl vim tzdata

CMD ["/bin/sh"]
