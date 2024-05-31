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