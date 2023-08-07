#!/bin/bash
docker buildx create --name mybuilder --driver docker-container --bootstrap --use
docker buildx inspect
