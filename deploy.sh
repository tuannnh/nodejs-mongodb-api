#!/bin/bash
docker run -d -p 8888:8888 -e MONGODB_CONNECTION=mongodb://root:123@172.104.191.90/admin?retryWrites=true&w=majority  --name nodeapp tuannnh/nodejs-api
