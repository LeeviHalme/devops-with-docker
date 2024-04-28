Edited dockerfiles:

Frontend:

```dockerfile
# use Node v16
FROM node:16

# frontend will run on port 5000
EXPOSE 5000

# 1.14 setup environment
ENV REACT_APP_BACKEND_URL="http://localhost:8080"

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

Backend:

```dockerfile
# use Go v1.16
FROM golang:1.16

# backend will run on port 8080
EXPOSE 8080

# 1.14 setup environment
ENV PORT=8080
ENV REQUEST_ORIGIN="http://localhost:5000"

# copy project files to the container
WORKDIR /usr/src/app
COPY ./example-backend .

# build the project
RUN go build

RUN chmod +x server
CMD ["./server"]
```
