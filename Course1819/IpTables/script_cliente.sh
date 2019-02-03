#!/bin/sh

# Borro en enrutamiento por defecto
route del default

# Añado el enrutamiento por defecto a la ip del router
route add default gw 192.168.1.110
