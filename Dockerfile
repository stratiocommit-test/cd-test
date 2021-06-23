FROM ubuntu:16.04
MAINTAINER CD "cd@stratio.com"

COPY target/cd-test-0.51.0-SNAPSHOT.jar /

ARG VERSION

COPY target/cd-test-$VERSION.jar /

CMD ["/usr/bin/tail", "-f", "/dev/null"]
