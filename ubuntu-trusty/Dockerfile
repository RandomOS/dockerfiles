FROM ubuntu:trusty
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

ENV LANG=en_US.UTF-8
ENV TZ=Asia/Shanghai

COPY etc/ /etc/
COPY root/ /root/

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y bash bash-completion curl wget vim locales tzdata \
    && apt-get clean \
    && locale-gen en_US.UTF-8 \
    && echo $TZ > /etc/timezone \
    && ln -sf /usr/share/zoneinfo/$TZ /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata

CMD ["/bin/sh"]
