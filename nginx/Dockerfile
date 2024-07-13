FROM randomos/alpine-lab:3.20
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

COPY etc/ /etc/
COPY run/ /tmp/

RUN /tmp/init.sh && rm /tmp/init.sh

CMD ["nginx", "-g", "daemon off;"]
