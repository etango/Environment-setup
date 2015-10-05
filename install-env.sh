#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2
sudo apt-get install -y git

echo "Hello!" > /tmp/hello.txt
git clone clone https://github.com/etango/Environment-setup > /var/www/html



