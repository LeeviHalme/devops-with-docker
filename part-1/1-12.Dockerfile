# use Node v16 for build stage
FROM node:16-alpine as build

# 1.14 setup environment
# 2.9 change the url
ENV REACT_APP_BACKEND_URL="http://localhost/api"

# copy project files to the container
WORKDIR /usr/src/app
COPY ./example-frontend .

# install dependencies
# build the project
RUN npm install && npm run build

# 3.8 add multi-stage
FROM node:16-alpine

# frontend will run on port 5000
EXPOSE 5000

# copy build files from the build stage
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/build ./build

# install "serve" as global dependency
RUN npm install -g serve

# 3.5 add new user
# 3.5 change the owner of current dir to appuser
# 3.7 change command to support alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# 3.5 change the user
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]

