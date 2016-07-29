#!/bin/bash
curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
yum -y install nodejs && sudo yum -y install nginx
service nginx stop
if [ -f /etc/nginx/nginx.conf ]
then
  rm /etc/nginx/nginx.conf
fi
pid=$(ps -ef | grep node | grep static | awk '{print $2}')
if [ -n "$pid"]
then
  kill $pid
fi
