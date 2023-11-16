
podman exec --interactive --tty --user $(whoami) --workdir /home/$(whoami) ubuntu:latest  /bin/bash
