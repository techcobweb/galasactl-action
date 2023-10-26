# Container image that runs your code
FROM busybox:latest

RUN mkdir /app && \
    wget -P /app/galasactl https://github.com/galasa-dev/cli/releases/download/v0.30.0/galasactl-linux-x86_64 && \
    chmod +x /app/galasactl

COPY entry-point.sh /app
RUN chmod +x /app/entry-point.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/app/entry-point.sh"]
