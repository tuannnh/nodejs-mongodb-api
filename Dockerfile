FROM node:10
MAINTAINER tuannnh

WORKDIR /usr/src/app

ENV MONGODB_CONNECTION mongodb://root:123\@172.104.191.90/admin\?retryWrites=true\&w=majority
ENV PORT 8888

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8888

CMD ["node","app.js"]
