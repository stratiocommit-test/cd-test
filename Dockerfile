FROM stratiocommit-test/cd-test-parent:0.5.0-14c40ba
MAINTAINER CD "cd@stratio.com"

ARG VERSION
ARG TESTARG

CMD ["/usr/bin/tail", "-f", "/dev/null"]
