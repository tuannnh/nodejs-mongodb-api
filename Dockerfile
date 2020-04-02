FROM node:10
MAINTAINER tuannnh

WORKDIR /usr/src/app

COPY package*.json ./

ENV MONGODB_CONNECTION = $MONGODB_CONNECTION
ENV PORT = 8088
RUN npm install

COPY . .

EXPOSE 8088

CMD ["node","app.js"]
