#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && docker push wilfreddev/source-engine:latest
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && docker push wilfreddev/java:latest
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin && docker push wilfreddev/ubuntu:latest
