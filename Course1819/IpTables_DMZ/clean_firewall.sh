#!/bin/sh

# Elimino todas las reglas existentes
iptables -F
iptables -X
iptables -Z
iptables -t nat -F

# Establezco política por defecto a accept
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P POSTROUTING ACCEPT

# Activamos el enmascaramiento de la red local
iptables -t nat -A POSTROUTING -s 172.16.20.0/24 -o eht0 -j MASQUERADE

# Permitimos hacer forward de paquetes en el firewall
echo 1 > /proc/sys/net/ipv4/ip_forward