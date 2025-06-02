#!/bin/bash

SCRIPT=$(readlink -f $0)
CWD=$(dirname ${SCRIPT})

cd ${CWD}

docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64,linux/arm/v7 -t randomos/alpine-lab:3.22 -t randomos/alpine-lab:latest --push .
