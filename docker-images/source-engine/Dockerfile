FROM ubuntu:18.04

LABEL maintainer="vilhelm@prytznet.se"

ENV HOME /server

RUN set -x \
	&& dpkg --add-architecture i386 \
	&& apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		tar curl \
		gcc g++ \
		ca-certificates \
		lib32gcc1 \
		libgcc1 \
		libcurl4-gnutls-dev:i386 \
		libssl1.0.0:i386 \
		libcurl4:i386 \
		lib32tinfo5 \
		libtinfo5:i386 \
		lib32z1 \
		lib32stdc++6 \
		libncurses5:i386 \
		libcurl3-gnutls:i386 \
		iproute2 gdb \
		libsdl1.2debian libfontconfig \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& useradd -d /server steam

WORKDIR ${HOME}
