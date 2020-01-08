FROM openjdk:8-alpine

LABEL maintainer="vilhelm@prytznet.se"

ENV HOME /server

RUN set -x \
	&& useradd -d /server container

WORKDIR ${HOME}
