Dockerfile:

```dockerfile
# use Go v1.16
FROM golang:1.16

# backend will run on port 8080
EXPOSE 8080

# copy project files to the container
WORKDIR /usr/src/app
COPY ./example-backend .

# build the project
RUN go build

# setup environment
ENV PORT=8080

RUN chmod +x server
CMD ["./server"]
```

Commands:

```bash
docker build --platform linux/amd64 -f 1-13.Dockerfile . -t example-backend
docker run -p 8080:8080 -d example-backend
```
