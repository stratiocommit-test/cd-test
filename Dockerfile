FROM stratiocommit-test/cd-test-parent:0.5.0-f589efe
MAINTAINER "cd@stratio.com"

ARG VERSION

COPY target/cd-test-$VERSION.jar /

CMD ["/usr/bin/tail", "-f", "/dev/null"]
