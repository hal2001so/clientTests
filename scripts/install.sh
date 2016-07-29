#!/bin/bash
curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
sudo yum -y install nodejs && sudo yum -y install nginx
sudo service nginx stop
sudo rm /etc/nginx/nginx.conf
sudo $pid=$(ps -ef | grep nohup | grep static | awk '{print $2}')
echo $pid
sudo kill $pid
