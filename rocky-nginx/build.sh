#!/bin/bash

SCRIPT=$(readlink -f $0)
CWD=$(dirname ${SCRIPT})

cd ${CWD}

docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64 -t randomos/rocky-nginx:1.27.5 -t randomos/rocky-nginx:latest --push .
