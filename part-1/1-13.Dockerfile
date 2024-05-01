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
CMD ["./server"]