#!/bin/bash
service nginx start
pid=$(ps -ef | grep staticserver.js | awk '{print $2}')
if [ -z "$pid" ]
then
  nohup node /usr/share/nginx/html/staticserver.js &
fi
