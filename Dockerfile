FROM node:14.13.0-alpine3.10

ENV BATS_VERSION=0.4.0

RUN apk add bash curl docker jq
RUN curl -o /tmp/v${BATS_VERSION}.tar.gz https://codeload.github.com/sstephenson/bats/tar.gz/v${BATS_VERSION}
RUN tar xvzf /tmp/v${BATS_VERSION}.tar.gz -C /tmp/
RUN /tmp/bats-${BATS_VERSION}/install.sh /usr/local
RUN rm -rf /tmp/*

WORKDIR /app
RUN npm i tap-junit
RUN find / -name tap-junit
COPY ./test.sh /usr/bin

WORKDIR /tests
CMD /usr/bin/test.sh
