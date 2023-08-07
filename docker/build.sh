#!/bin/bash

export REPO_NAME="sqlite-web"
export DOCKERHUB_PATH="edugarrick"
export TAG="2023.8.1"

echo $0 $1

echo "Build docker image ..."
platform=""
if [ $1 = "all" ]; then
   platform="--platform linux/amd64,linux/arm64/v8"
fi

echo "Platform: $platform"

docker buildx build $platform -t $DOCKERHUB_PATH/$REPO_NAME:$TAG --push .
docker buildx build -t $DOCKERHUB_PATH/$REPO_NAME:$TAG --push .
