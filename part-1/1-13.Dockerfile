# use Go v1.16
FROM golang:1.16-alpine as build

# 1.14 setup environment
ENV PORT=8080
ENV REQUEST_ORIGIN="http://localhost"

# copy project files to the container
WORKDIR /usr/src/app
COPY ./example-backend .

# build the project
# 3.9 add env flags to correctly link the binary
RUN CGO_ENABLED=0 GOOS=linux go build && chmod +x server

# 3.9 add multi-stage
FROM scratch

# backend will run on port 8080
EXPOSE 8080

COPY --from=build /usr/src/app/server /server

CMD ["/server"]