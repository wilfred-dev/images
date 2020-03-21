FROM debian:buster

LABEL maintainer="vilhelm@prytznet.se"

ENV HOME /server

RUN set -x \
	&& apt-get update \
	&& apt-get upgrade -y \
	&& apt-get -y install lib32gcc1 lib32stdc++6 wget \
	&& apt-get clean \
	&& rm -rf /var/lib/{apt,dpkg,cache,log}/ \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& useradd -d /server steam

WORKDIR ${HOME}
