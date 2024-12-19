#!/bin/bash

SCRIPT=$(readlink -f $0)
CWD=$(dirname ${SCRIPT})

cd ${CWD}

docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64 -t randomos/firecracker:1.10.0 -t randomos/firecracker:latest --push .
