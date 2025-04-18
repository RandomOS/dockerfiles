#!/bin/bash

SCRIPT=$(readlink -f $0)
CWD=$(dirname ${SCRIPT})

cd ${CWD}

docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64 -t randomos/rocky-tengine:3.1.0 -t randomos/rocky-tengine:latest --push .
