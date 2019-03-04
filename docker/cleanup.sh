#!/bin/bash
cp docker-base/Dockerfile .
docker container prune -f
docker image rm -f nrlabs/node-multi
docker image rm -f nrlabs/node-base
docker image rm -f nrlabs/node-alpine
docker image rm -f nrlabs/node-cache
docker image prune -f
