#!/bin/sh
#build docker image from Dockerfile in current dir with name item-app tag v1
docker build -t item-app:v1 .
#add new line to tidy output
echo '\n\n'

#print list images docker
docker images
#add new line to tidy output
echo '\n\n'

#create new image tag
docker tag item-app:v1 ghcr.io/ariecc101/item-app:v1
#add new line to tidy output
echo '\n\n'

#export github token to env
export GITHUB_PACKAGES_TOKEN=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
#login to github packages
echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u ariecc101 --password-stdin
#add new line to tidy output
echo '\n\n'

#push image to github packages
docker push ghcr.io/ariecc101/item-app:v1
#add new line to tidy output
echo '\n\n'
