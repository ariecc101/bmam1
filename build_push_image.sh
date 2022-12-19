#!/bin/sh
docker build -t item-app:v1 .
docker images
echo '\n\n'
docker tag item-app:v1 gchr
echo '\n\n'
export GITHUB_PACKAGES_TOKEN=
echo $GITHUB_PACKAGES_TOKEN | docker login gchr.io -u
echo '\n\n'
docker push gchr.io
echo '\n\n'
