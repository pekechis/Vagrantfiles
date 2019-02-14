#!/bin/sh

echo -n "Aplicando las reglas de Firewall"

# Elimino todas las reglas existentes
iptables -F
iptables -X
iptables -Z
iptables -t nat -F

# Establezco las políticas por defecto a DROP
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
iptables -t nat -P PREROUTING DROP
iptables -t nat -P POSTROUTING DROP

# Permito todo a la máquina local
iptables -A INPUT -i lo ACCEPT
iptables -A OUPUT -i lo ACCEPT

iptables -A INPUT -s 192.168.1.110 -j ACCEPT
iptables -A OUTPUT -d 192.168.1.110 -j ACCEPT

# Con esto permito hacer forward de los paquetes en el Firewall
