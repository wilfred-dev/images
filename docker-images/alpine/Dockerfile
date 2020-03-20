FROM alpine:latest

LABEL maintainer="vilhelm@prytznet.se"

ENV HOME /server

RUN set -x \
    && apk --no-cache --update add curl jq \
	&& adduser -D -h /server container

WORKDIR ${HOME}
