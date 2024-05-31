I decided to modify the dockerfile for the express-app image used in the excercise 3.1. I added user switching to enhance security as well as setting the NODE_ENV environment variable to production (this optimizes packages and for example enables caching on express). Since this application doesn't have a built step, I decided to combine all the commands that could be combined to reduce the number of layers in the image and thus making it smaller.

Before:

```Dockerfile
FROM node:16

COPY . .

RUN npm install

CMD node index.js
```

After:

```Dockerfile
FROM node:16

WORKDIR /usr/src/app

COPY . .

EXPOSE 8080

RUN npm install

# 3.10 set node environment to production
ENV NODE_ENV=production

# 3.10 add new user
# 3.10 change the owner of current dir to nodejs
RUN useradd -m nodejs && chown nodejs .

# 3.10 switch to nodejs user
USER nodejs

CMD node index.js
```
