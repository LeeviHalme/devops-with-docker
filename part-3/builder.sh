#!/bin/bash

# Get Github repository and Docker Hub repository from
# command line arguments
GITHUB_REPO=$1
DOCKERHUB_REPO=$2

# Clone the Github repository to a temporary directory
# and change working directory
git clone https://github.com/$GITHUB_REPO temp
cd temp

# Build the Docker image
docker build -t $DOCKERHUB_REPO .

# Push the Docker image to Docker Hub
docker push $DOCKERHUB_REPO

# Remove the temporary directory
cd ..
rm -rf temp