#!/usr/bin/env bash
echo "GALASACTL_ARGS are : $GALASACTL_ARGS"
exec docker run -v "/var/run/docker.sock":"/var/run/docker.sock" \
    --entrypoint="/bin/galasactl" $DOCKER_OPTIONS \
    icr.io/galasadev/galasa-cli-amd64:$GALASACTL_VERSION \
    "${GALASACTL_ARGS}"