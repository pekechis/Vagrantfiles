#!/bin/bash

sudo apt-get update

sudo apt-get install -y apache2
sudo apt-get install -y php5 php5-mysql

mv /tmp/info.php /var/www/html/info.php