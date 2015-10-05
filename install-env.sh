#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git

echo "Hello!" > /tmp/hello.txt

git clone https://github.com/etango/Application-setup.git 

mv ./Application-setup/page1.html /var/www/html/
mv ./Application-setup/page2.html /var/www/html/



