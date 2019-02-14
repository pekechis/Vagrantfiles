#!/bin/sh

route del default
route add default gw 172.16.30.1

apt-get install -y apache2

