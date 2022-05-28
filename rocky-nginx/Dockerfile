FROM randomos/alpine-lab:latest
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

COPY etc/ /etc/
COPY run/ /tmp/

RUN /tmp/init.sh && rm /tmp/init.sh

CMD ["nginx", "-g", "daemon off;"]
