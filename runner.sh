#!/usr/bin/env bash
echo "INPUT_GALASACTL_ARGS are : ${INPUT_GALASACTL-ARGS}"
exec docker run -v "/var/run/docker.sock":"/var/run/docker.sock" \
    --entrypoint="/bin/galasactl" ${INPUT_DOCKER-OPTIONS} \
    icr.io/galasadev/galasa-cli-amd64:${INPUT_GALASACTL-VERSION} \
    "${INPUT_GALASACTL-ARGS}"