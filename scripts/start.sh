#!/bin/bash
sudo service nginx start
pid=$(ps -ef | grep staticserver.js | awk '{print $2}')
if [ $pid -gt 0]
then
echo "The service is already runnning"
else
if
  nohup node /usr/share/nginx/html/staticserver.js &
fi
