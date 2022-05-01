FROM debian:bullseye-slim

LABEL author="Vilhelm Prytz" maintainer="info@wilfredproject.org"

ENV DEBAIN_FRONTEND noninteractive
ENV HOME /server

RUN apt update && apt upgrade -y

RUN apt install -y gcc g++ libgcc1 libc++-dev gdb libc6 git wget curl tar zip unzip binutils xz-utils liblzo2-2 cabextract iproute2 net-tools netcat telnet libatomic1 libsdl1.2debian libsdl2-2.0-0 libfontconfig libunwind8 libssl-dev sqlite3 libsqlite3-dev libmariadbclient-dev-compat libduktape205 locales ffmpeg gnupg2 apt-transport-https software-properties-common ca-certificates liblua5.3-0 libz-dev rapidjson-dev tzdata libevent-dev libzip4

RUN update-locale lang=en_US.UTF-8 && dpkg-reconfigure --frontend noninteractive locales

RUN set -x && apt-get update && apt-get upgrade -y && dpkg --add-architecture i386 && apt-get update && apt-get install -y lib32z1 && apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/* && useradd -d /server container

WORKDIR ${HOME}
