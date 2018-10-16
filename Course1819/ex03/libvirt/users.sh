#!/bin/sh

sudo apt-get update
sudo apt-get -y install whois

clave = "$(mkpasswd 12345)"

useradd -d /home/perez -m -p $clave
useradd -d /home/jimenez -m -p $clave