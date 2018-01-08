FROM ubuntu:xenial

RUN apt-get update

RUN apt-get install puppet wget git vim -y

RUN mkdir -p /root/.ssh/

COPY config /root/.ssh/

COPY id_rsa /root/.ssh/

COPY puppet.conf /etc/puppet/puppet.conf

ENTRYPOINT /bin/bash
