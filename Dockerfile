FROM node:10
MAINTAINER tuannnh

WORKDIR /usr/src/app

COPY package*.json ./

ENV MONGODB_CONNECTION mongodb://root:123@172.104.191.90/admin?retryWrites=true&w=majority
ENV PORT 8088
RUN npm install

COPY . .

EXPOSE 8088

CMD ["node","app.js"]
