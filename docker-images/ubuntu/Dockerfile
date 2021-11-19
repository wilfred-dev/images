FROM ubuntu:18.04

LABEL author="Vilhelm Prytz" maintainer="info@wilfredproject.org"

ENV HOME /server

RUN set -x \
	&& apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		libcurl4 \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& useradd -d /server container

WORKDIR ${HOME}
