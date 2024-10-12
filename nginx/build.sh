#!/bin/bash

SCRIPT=$(readlink -f $0)
CWD=$(dirname ${SCRIPT})

cd ${CWD}

docker buildx build -f Dockerfile --platform linux/amd64 -t randomos/nginx:latest --push .
