FROM debian:latest
MAINTAINER Reggie Ealey <scheekur@cisco.com>
WORKDIR /wks
RUN \
apt-get update && \
apt-get install -y vim
ADD ./config/bms-repo.list /etc/apt/sources.list.d/.
CMD ["/bin/ping", "localhost"]
#CMD ["./entrypoint.sh"]
