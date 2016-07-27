#!/bin/bash
sudo service nginx start
nohup node staticserver.js &
