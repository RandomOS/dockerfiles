#!/bin/bash

SCRIPT=$(readlink -f $0)
CWD=$(dirname ${SCRIPT})

cd ${CWD}

docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64 -t randomos/cloudhypervisor:51.0 -t randomos/cloudhypervisor:latest --push .
