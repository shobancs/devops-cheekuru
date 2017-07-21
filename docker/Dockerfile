FROM java:8
MAINTAINER Reggie Ealey <scheekur@cisco.com>

ENV SRC_DIR /app/src
ENV GROOVY_VERSION 2.4.8
ENV SPRINGBOOT_VERSION 1.5.1.RELEASE

RUN curl -s get.gvmtool.net | bash
RUN bash -c "source $HOME/.gvm/bin/gvm-init.sh && gvm install groovy $GROOVY_VERSION && gvm install springboot $SPRINGBOOT_VERSION"

RUN mkdir -p $SRC_DIR
WORKDIR $SRC_DIR

EXPOSE 8080

CMD ["/bin/bash", "-c", "source $HOME/.bashrc && spring run $SRC_DIR -- -Djava.security.egd=file:/dev/urandom"]
