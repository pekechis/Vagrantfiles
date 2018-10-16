#!/bin/sh

password = "$(mkpasswd 12345)"
useradd -d /home/perez -m -p $password
useradd -d /home/jimenez -m -p $password