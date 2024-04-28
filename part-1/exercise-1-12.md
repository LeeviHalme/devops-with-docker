Dockerfile:

```dockerfile
# use Node v16
FROM node:16

# frontend will run on port 5000
EXPOSE 5000

# copy project files to the container
WORKDIR /usr/src/app
COPY ./example-frontend .

# install "serve" as global dependency
RUN npm install -g serve

# install dependencies
RUN npm install

# build the project
RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]
```
