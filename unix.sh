#!/bin/bash

set -x

CONTAINER=ubuntu:latest

podman ps | grep ${CONTAINER} 2>/dev/null 1>&2
if [ $? -ne 0 ]; then
	podman start ${CONTAINER}
fi

xhost +
podman exec --interactive --tty --user $(whoami) --workdir /home/$(whoami) ${CONTAINER} /bin/bash
