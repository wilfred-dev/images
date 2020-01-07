FROM debian:stable-slim

LABEL maintainer="vilhelm@prytznet.se"

ENV HOME /server

RUN set -x \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		lib32stdc++6 \
        lib32gcc1 \
		ca-certificates \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& useradd -d /server steam

WORKDIR ${HOME}
