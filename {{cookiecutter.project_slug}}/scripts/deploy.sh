#! /usr/bin/env sh

# Exit in case of error
set -e

DOMAIN=${DOMAIN?Variable not set} \
TAG=${TAG?Variable not set} \

# Simple deployment is just to build and start docker containers
docker-compose -f docker-compose.yml up -d
