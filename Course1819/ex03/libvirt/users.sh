#!/bin/sh

sudo apt-get update
sudo apt-get -y install whois

clave=$(mkpasswd 12345)
echo "$clave"

sudo useradd -d /home/perez -m perez -p "$clave"
sudo useradd -d /home/jimenez -m jimenez -p "$clave"
