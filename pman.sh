#!/bin/bash

ACTION=${1}

case ${ACTION} in
  "down")
    echo "Shutting down podman machine"
    podman machine stop
    ;;

  "up")
    echo "STARTING podman machine"
    podman machine start
    ;;

  "init")
    echo "CREATING a new podman machine"
    podman machine init
    ;;
    *)
    echo "\n\n\n\n"
    echo "DISPLAY system connection list"
    podman system connection list
    ;;

esac
