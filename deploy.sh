#!/bin/bash
docker stop nodeapp
docker rm nodeapp
docker run -d -p 8888:8888 -e MONGODB_CONNECTION=$MONGODB_CONNECTION  --name nodeapp tuannnh/nodejs-api
