#!/bin/bash

# Depends on the 'wario-compiler' docker image
DOCKER_BUILDKIT=1 docker build -t wario-experiments .
