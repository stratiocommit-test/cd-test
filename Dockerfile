FROM stratiocommit-test/cd-test-parent:0.5.0-3f21db2
MAINTAINER CD "cd@stratio.com"

ARG VERSION
ARG TESTARG

CMD ["/usr/bin/tail", "-f", "/dev/null"]
