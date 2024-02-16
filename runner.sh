#!/usr/bin/env bash

exec docker run -v "/var/run/docker.sock":"/var/run/docker.sock" --entrypoint="/bin/galasactl" icr.io/galasadev/galasa-cli-amd64:$GALASACTL_VERSION "$GALASACTL_ARGS"