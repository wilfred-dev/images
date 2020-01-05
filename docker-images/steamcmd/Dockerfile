FROM debian:stable-slim

LABEL maintainer="vilhelm@prytznet.se"

ENV STEAMCMDDIR /server/steamcmd
ENV HOME /server

RUN set -x \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		wget \
		lib32stdc++6 \
        lib32gcc1 \
		ca-certificates \
	&& mkdir -p ${STEAMCMDDIR} \
	&& cd ${STEAMCMDDIR} \
	&& wget -qO- 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxf - \
	&& apt-get remove --purge -y \
		wget \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR ${HOME}