#!/usr/bin/env bash

set -x

# after the image name are the arguments passed in to source file
#podman run -v /Users/craigcurtin/tmp:/tmp -it transaction  --entrypoint /bin/sh
podman run -v /Users/craigcurtin/tmp:/tmp -it transaction  /bin/sh


