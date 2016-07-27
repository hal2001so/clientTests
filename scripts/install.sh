#!/bin/bash
curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
sudo yum -y install nodejs && sudo yum -y install nginx
