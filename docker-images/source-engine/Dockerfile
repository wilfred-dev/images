FROM ubuntu:18.04

LABEL author="Vilhelm Prytz" maintainer="info@wilfredproject.org"

ENV HOME /server
ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386 \
	&& apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y tar curl gcc g++ lib32gcc1 libgcc1 libcurl4-gnutls-dev:i386 libssl1.0.0:i386 libcurl4:i386 lib32tinfo5 libtinfo5:i386 lib32z1 lib32stdc++6 libncurses5:i386 libcurl3-gnutls:i386 iproute2 gdb libsdl1.2debian libfontconfig telnet net-tools netcat \
	&& useradd -d /server container

USER container
ENV home /server

WORKDIR ${HOME}

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
