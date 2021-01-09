FROM openjdk:8-alpine

LABEL maintainer="vilhelm@prytznet.se"

ENV HOME /server

RUN set -x \
	&& adduser -D -h /server container

WORKDIR ${HOME}
