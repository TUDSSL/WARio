#!/bin/bash

eval $(ssh-agent)
ssh-add
DOCKER_BUILDKIT=1 docker build -t intermittent-compiler-dev --ssh default=$SSH_AUTH_SOCK .
