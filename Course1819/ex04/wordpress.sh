#!/bin/bash

sudo apt-get update

sudo apt-get install -y apache2
sudo apt-get install -y php5 php5-mysql

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 2asirtriana'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 2asirtriana'

sudo apt-get install -y mysql-server

sudo wget -P /var/www/html/ https://wordpress.org/latest.tar.gz
sudo tar -xvzf /var/www/html/latest.tar.gz -C /var/www/html/

mv /tmp/info.php /var/www/html/info.php