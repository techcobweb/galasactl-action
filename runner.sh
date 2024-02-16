#!/usr/bin/env bash
echo "INPUT_GALASACTL_ARGS are : $INPUT_GALASACTL_ARGS"
exec docker run -v "/var/run/docker.sock":"/var/run/docker.sock" \
    --entrypoint="/bin/galasactl" $INPUT_DOCKER_OPTIONS \
    icr.io/galasadev/galasa-cli-amd64:$INPUT_GALASACTL_VERSION \
    "${INPUT_GALASACTL_ARGS}"