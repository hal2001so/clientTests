#!/bin/bash
sudo service nginx start
sudo nohup node /usr/share/nginx/html/staticserver.js &
