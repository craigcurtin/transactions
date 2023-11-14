#!/usr/bin/env bash

podman machine ssh 'sudo rpm-ostree upgrade --check'
