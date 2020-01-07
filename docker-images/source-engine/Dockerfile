FROM debian:stable-slim

LABEL maintainer="vilhelm@prytznet.se"

ENV HOME /server

RUN set -x \
	&& dpkg --add-architecture i386 \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		lib32stdc++6 \
        lib32gcc1 \
		ca-certificates \
		libcurl3-gnutls:i386 \
		lib32z1 \
		libncurses5:i386 \
		libbz2-1.0:i386 \
		libtinfo5:i386 \
		curl \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& useradd -d /server steam

WORKDIR ${HOME}
