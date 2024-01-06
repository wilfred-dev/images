FROM debian:bookworm-slim

LABEL author="Vilhelm Prytz" maintainer="info@wilfredproject.org"

ENV DEBAIN_FRONTEND noninteractive
ENV HOME /server

RUN apt update && apt upgrade -y

RUN apt install -y git wget curl tar zip unzip binutils iproute2 net-tools telnet

RUN update-locale lang=en_US.UTF-8 && dpkg-reconfigure --frontend noninteractive locales

RUN set -x && apt-get update && apt-get upgrade -y && apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/* && useradd -d /server container

WORKDIR ${HOME}
