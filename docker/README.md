# Build a docker image including this repository and the ICEmu emulator

NB. this Dockerfile shares the ssh keys of the host using `SSH_AUTH_SOCK`
(see ./build.sh) to pull the private github repositories.

Access is needed to this repository (https://github.com/iiKoe/intermittent-compiler-collection)
and ICEmu (https://github.com/iiKoe/ICEmu).

Run the container with:
```
docker run --rm -it intermittent-compiler-dev /bin/bash
```

To share the ssh keys of the host (for git access) use:
```
eval $(ssh-agent)
ssh-add
docker run --rm -it -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK intermittent-compiler-dev /bin/bash
```

