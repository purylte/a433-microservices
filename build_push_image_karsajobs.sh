#!/bin/sh

# Build docker image
docker build -t ghcr.io/purylte/karsajobs:latest .

# Log in to github container registry
echo $CR_PAT | docker login ghcr.io -u purylte --password-stdin

# Push the Docker image to GitHub Packages
docker push ghcr.io/purylte/karsajobs:latest
