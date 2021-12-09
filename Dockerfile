# syntax=docker/dockerfile:1

FROM node:17.2.0
ENV NODE_ENV=production

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .
EXPOSE 8080

CMD [ "node", "server.js" ]
