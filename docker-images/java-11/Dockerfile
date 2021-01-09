FROM openjdk:11-slim

LABEL author="Vilhelm Prytz" maintainer="vilhelm@prytznet.se"

RUN set -x \
    && useradd -d /server -m container

USER container
ENV  USER=container HOME=/server

WORKDIR ${HOME}
