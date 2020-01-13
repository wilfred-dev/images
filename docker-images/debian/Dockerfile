FROM debian:stretch

LABEL maintainer="vilhelm@prytznet.se"

ENV HOME /server

RUN set -x \
	&& apt-get update \
	&& apt-get upgrade -y \
    && dpkg --add-architecture i386 \
    && apt-get update \
	&& apt-get install -y \
		lib32z1 lib32ncurses5 screen \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& useradd -d /server container

WORKDIR ${HOME}
