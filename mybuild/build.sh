#!/bin/bash

export REPO_NAME="sqlite-web"
export DOCKERHUB_PATH="edugarrick"
export TAG="latest"

echo "Build docker image ..."
docker buildx build --platform linux/amd64,linux/arm64/v8 -t $DOCKERHUB_PATH/$REPO_NAME:$TAG --push ../docker/.

# docker tag edugarrick/sqlite-web:latest edugarrick/sqlite-web:2026.6.1
# docker push edugarrick/sqlite-web:2026.6.1
