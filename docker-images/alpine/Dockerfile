FROM alpine:latest

LABEL author="Vilhelm Prytz" maintainer="info@wilfredproject.org"

ENV HOME /server

RUN set -x \
	&& adduser -D -h /server container

WORKDIR ${HOME}
