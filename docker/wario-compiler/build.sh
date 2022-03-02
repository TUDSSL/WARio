#!/bin/bash

# Depends on the 'wario-source' docker image
DOCKER_BUILDKIT=1 docker build -t wario-compiler .
