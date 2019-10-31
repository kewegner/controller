#!/bin/bash

#Takes two parms:
#CLI_VERSION
#TRAVIS_TAG

set -e
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $DOCKER_ORG/appsody-controller:$1 -t $DOCKER_ORG/appsody-controller:latest .
docker push $DOCKER_ORG/appsody-controller