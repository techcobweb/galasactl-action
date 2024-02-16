FROM docker:20.10

RUN apk add bash

COPY runner.sh /runner.sh
RUN chmod +x runner.sh

ENTRYPOINT ["/runner.sh"]

