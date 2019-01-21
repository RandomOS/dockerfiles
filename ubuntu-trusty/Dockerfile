FROM ubuntu:trusty
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

ENV TZ Asia/Shanghai

COPY etc/ /etc/
COPY root/ /root/

RUN apt-get update
    && apt-get install -y bash bash-completion curl wget vim tzdata
    && apt-get clean
    && echo $TZ > /etc/timezone
    && dpkg-reconfigure -f noninteractive tzdata

CMD ["/bin/sh"]
