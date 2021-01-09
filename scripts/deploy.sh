#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && docker push wilfreddev/source-engine:latest
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && docker push wilfreddev/java:latest
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && docker push wilfreddev/java:11
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && docker push wilfreddev/ubuntu:latest
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && docker push wilfreddev/debian:latest
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && docker push wilfreddev/alpine:latest
