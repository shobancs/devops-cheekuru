FROM alpine
MAINTAINER scheekur <scheekur@cisco.com>

RUN apk add --update bash curl zip && rm -rf /var/cache/apk/*
COPY Dockerfile /

ENV SRC_DIR /app/src
ENV GROOVY_VERSION 2.4.3
ENV SPRINGBOOT_VERSION 1.2.3.RELEASE

RUN mkdir -p $SRC_DIR
WORKDIR $SRC_DIR

RUN curl -s sdkman.net | bash
# RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install groovy $GROOVY_VERSION && sdk install springboot $SPRINGBOOT_VERSION"


EXPOSE 8080

CMD ["/bin/bash", "-c", "source $HOME/.bashrc && spring run $SRC_DIR -- -Djava.security.egd=file:/dev/urandom"]
