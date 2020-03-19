#!/bin/bash

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

# install nginx
yum update -y
yum -y install nginx
sudo amazon-linux-extras install -y nginx1

# make sure nginx is started
service nginx start
