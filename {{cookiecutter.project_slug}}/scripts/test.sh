#! /usr/bin/env sh

# Exit in case of error
set -e

DOMAIN=backend \
SMTP_HOST="" \
INSTALL_DEV=true \

# Simple test is just running local tests
sh ./scripts/test-local.sh
