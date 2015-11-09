#!/bin/bash

apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql

git clone https://github.com/etango/Application-setup.git

my ./Application-setup/images  /var/www/html/images
mv ./Application-setup/*.html /var/www/html/html
mv ./Application-setup/*.php /var/www/html

sudo curl -sS https://getcomposer.org/installer | php 7> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

sudo php /var/www/html/setup.php &> /tmp/database-setup.txt

echo "Hello" > /tmp/hello.txt




