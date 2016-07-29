#!/bin/bash
sudo service nginx start
sudo nohup node staticserver.js &
