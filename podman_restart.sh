#!/usr/bin/env bash


podman machine stop; podman machine start

echo "just a restart, complete"

exit

# rebuild podman vm ...
# https://stackoverflow.com/questions/71977532/podman-mount-host-volume-return-error-statfs-no-such-file-or-directory-in-ma/76488304#76488304
# here are the docs for init
# https://docs.podman.io/en/latest/markdown/podman-machine-init.1.html
podman machine stop
podman machine rm
podman machine init # you may specify parameters for your VM
podman machine start
