FROM busybox
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

ADD https://cdn.jsdelivr.net/gh/pts/staticpython@master/release/python2.7-static /bin/python

RUN chmod +x /bin/python

CMD ["/bin/python"]
