FROM openresty/openresty:1.27.1.1-buster-fat
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

ENV LANG=en_US.UTF-8
ENV TZ=Asia/Shanghai

COPY root/ /root/
COPY run/ /tmp/

RUN /tmp/init.sh && rm /tmp/init.sh

CMD ["nginx", "-g", "daemon off;"]
