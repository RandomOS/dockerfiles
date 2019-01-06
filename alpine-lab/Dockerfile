FROM alpine:3.8
LABEL "maintainer"="RandomK <randomk@foxmail.com>"

RUN echo 'https://mirror.tuna.tsinghua.edu.cn/alpine/v3.8/main' > /etc/apk/repositories \
    && echo 'https://mirror.tuna.tsinghua.edu.cn/alpine/v3.8/community' >> /etc/apk/repositories \
    && apk update && apk --no-cache add bash curl vim tini tzdata

ENV TZ Asia/Shanghai

ENTRYPOINT ["tini", "--"]

CMD ["/bin/sh"]
