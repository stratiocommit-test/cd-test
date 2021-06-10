FROM ubuntu:16.04
MAINTAINER CD "cd@stratio.com"

COPY target/cd-test-0.51.0-SNAPSHOT.jar /

ARG VERSION
ARG TESTARG

CMD ["/usr/bin/tail", "-f", "/dev/null"]
