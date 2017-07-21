FROM ubuntu:latest
MAINTAINER scheekur <scheekur@cisco.com>

ENV SRC_DIR /app/src
ENV GROOVY_VERSION 2.4.8
ENV SPRINGBOOT_VERSION 1.5.1.RELEASE

RUN mkdir -p $SRC_DIR
WORKDIR $SRC_DIR

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  \
    curl \
    iputils-ping \
    tree \
    vim \
    zip \
    software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    apt-get install -y oracle-java8-installer


RUN curl -s "https://get.sdkman.io" | bash
RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install groovy $GROOVY_VERSION && sdk install springboot $SPRINGBOOT_VERSION"


EXPOSE 8080
CMD ["/bin/ping", "localhost"]

# CMD ["/bin/bash", "-c", "source $HOME/.bashrc && spring run $SRC_DIR -- -Djava.security.egd=file:/dev/urandom"]
