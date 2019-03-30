FROM ubuntu:bionic
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

ENV LANG en_US.UTF-8
ENV TZ Asia/Shanghai

COPY etc/ /etc/
COPY root/ /root/

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y bash bash-completion curl wget vim tzdata \
    && apt-get clean \
    && locale-gen en_US.UTF-8 \
    && echo $TZ > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata

CMD ["/bin/sh"]
