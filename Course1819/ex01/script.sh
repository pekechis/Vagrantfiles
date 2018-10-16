#!/bin/sh

mv /tmp/resolv.conf /etc/resolv.conf

sudo apt-get update
sudo apt-get install -y nmap
