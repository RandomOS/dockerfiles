FROM alpine:3.20
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

ENV LANG=en_US.UTF-8
ENV TZ=Asia/Shanghai

COPY root/ /root/
COPY run/ /tmp/

RUN apk update && apk add --no-cache bash && /tmp/init.sh && rm /tmp/init.sh

ENTRYPOINT ["tini", "--"]

CMD ["tail", "-f", "/dev/null"]
