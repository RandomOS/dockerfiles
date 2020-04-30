FROM busybox
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

RUN wget -q -O /bin/python https://cdn.jsdelivr.net/gh/pts/staticpython@master/release/python2.7-static \
    && chmod +x /bin/python \
    && mkdir -p /usr/bin \
    && ln -s /bin/env /usr/bin/env \
    && ln -s /bin/python /usr/bin/python2

CMD ["/bin/python"]
