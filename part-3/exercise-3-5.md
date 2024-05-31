I changed the Dockerfiles to use a custom user when running the container. This is to avoid running the container as root.

1-12.Dockerfile:

```Dockerfile
# use Node v16
FROM node:16

# frontend will run on port 5000
EXPOSE 5000

# 1.14 setup environment
# 2.9 change the url
ENV REACT_APP_BACKEND_URL="http://localhost/api"

# copy project files to the container
WORKDIR /usr/src/app
COPY ./example-frontend .

# install "serve" as global dependency
RUN npm install -g serve

# install dependencies
RUN npm install

# build the project
RUN npm run build

# 3.5 add new user
RUN useradd -m nodejs

# 3.5 change the owner of current dir to nodejs
RUN chown nodejs .

# 3.5 change the user
USER nodejs

CMD ["serve", "-s", "-l", "5000", "build"]
```

1-13.Dockerfile:

```Dockerfile
# use Go v1.16
FROM golang:1.16

# backend will run on port 8080
EXPOSE 8080

# 1.14 setup environment
ENV PORT=8080
ENV REQUEST_ORIGIN="http://localhost"

# copy project files to the container
WORKDIR /usr/src/app
COPY ./example-backend .

# build the project
RUN go build

RUN chmod +x server

# 3.5 add new user
RUN useradd -m go

# 3.5 change the owner of current dir to go
RUN chown go .

# 3.5 change the user
USER go

CMD ["./server"]
```
