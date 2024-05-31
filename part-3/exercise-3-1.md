I used this repository and the express-app example to create a deployment pipeline to Docker Hub.

.github/workflows/express-app.yml:

```yml
name: Release Node.js app

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      # get access to the repository
      - uses: actions/checkout@v4
      # ...
      - name: Login to Docker Hub
        uses: docker/login-action@v3
        with:
          username: ${{ secrets.DOCKERHUB_USERNAME }}
          password: ${{ secrets.DOCKERHUB_TOKEN }}
      # ...
      - name: Build & Push Image
        uses: docker/build-push-action@v5
        with:
          context: ./part-3/express-app
          push: true
          tags: leevihalme/devopswd-express-app:latest
```

docker-compose-3-1.yml:

```yml
version: "3.8"

services:
  watchtower:
    image: containrrr/watchtower
    environment:
      - WATCHTOWER_POLL_INTERVAL=30 # Poll every 60 seconds
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    container_name: watchtower

  express-app:
    image: leevihalme/devopswd-express-app:latest
    ports:
      - "8080:8080"
    container_name: express-app
    restart: always
```
