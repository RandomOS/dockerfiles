FROM randomos/alpine-lab:3.22
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

RUN apk update \
    && apk add --no-cache \
        bind-tools busybox-extras \
        ethtool \
        darkhttpd \
        fping \
        gawk grep \
        htop \
        iftop iperf iproute2 \
        mtr \
        netcat-openbsd ngrep nload nmap nmap-ncat nmap-nping \
        openssl \
        sed socat strace \
        tcpdump the_silver_searcher

CMD ["/bin/bash"]
