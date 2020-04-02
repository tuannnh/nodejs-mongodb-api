FROM node:10
MAINTAINER tuannnh

WORKDIR /usr/src/app

ENV MONGODB_CONNECTION $MONGODB_CONNECTION
ENV PORT 8888

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8888

CMD ["node","app.js"]
