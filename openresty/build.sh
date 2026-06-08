#!/bin/bash

SCRIPT=$(readlink -f $0)
CWD=$(dirname ${SCRIPT})

cd ${CWD}

docker buildx build -f Dockerfile --platform linux/amd64 -t randomos/openresty:1.31.1.1 -t randomos/openresty:latest --push .
