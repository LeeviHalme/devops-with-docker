I used this repository and the express-app example to create a deployment pipeline to a cloud service (Render). The live version can be found at [https://devopswd-express-app-latest.onrender.com/](https://devopswd-express-app-latest.onrender.com/)

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
  deploy:
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to production
        uses: johnbeynon/render-deploy-action@v0.0.8
        with:
          service-id: ${{ secrets.RENDER_SERVICE_ID }}
          api-key: ${{ secrets.RENDER_API_KEY }}
```
