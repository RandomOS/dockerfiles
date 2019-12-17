FROM busybox
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

RUN wget -q -O /bin/python https://cdn.jsdelivr.net/gh/pts/staticpython@master/release/python2.7-static \
    && chmod +x /bin/python

CMD ["/bin/python"]
