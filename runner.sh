#!/usr/bin/env bash

exec docker run -v "/var/run/docker.sock":"/var/run/docker.sock" --entrypoint=$INPUT_SHELL icr.io/galasadev/galasa-cli-amd64:$GALASACTL_VERSION "bin/galasactl --version'\n'/;}"