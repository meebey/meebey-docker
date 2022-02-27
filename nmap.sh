#!/bin/bash

IMAGE=$(docker image ls alpine_nmap | grep alpine_nmap)
if [ "$IMAGE" = "" ]; then
    docker build -f alpine_nmap.Dockerfile --tag alpine_nmap .
fi
docker run --rm -it alpine_nmap

