FROM openjdk:17-alpine

LABEL author="Vilhelm Prytz" maintainer="info@wilfredproject.org"

RUN set -x \
    && adduser \
    --disabled-password \
    --gecos "" \
    --home "/server" \
    "container"

USER container
ENV  USER=container HOME=/server

WORKDIR ${HOME}
