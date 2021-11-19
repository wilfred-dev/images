FROM openjdk:16-slim

LABEL author="Vilhelm Prytz" maintainer="info@wilfredproject.org"

RUN set -x \
    && useradd -d /server -m container

USER container
ENV  USER=container HOME=/server

WORKDIR ${HOME}
