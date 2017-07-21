FROM alpine
MAINTAINER regealey <regealey@gmail.com>

RUN apk add --update bash && rm -rf /var/cache/apk/*
#ENTRYPOINT ["/bin/puppet"]
#CMD ["agent", "--verbose", "--onetime", "--no-daemonize", "--summarize" ]

COPY Dockerfile /
