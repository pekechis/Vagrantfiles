# Practica 1

## Creación de multimáquinas y aprovisionamiento por ficheros

Con un único Vagrantfile crear 4 máquinas virtuales (partiendo de una box ubuntu/trusty64):

- Una deberá tener una IP pública obtenida mediante DHCP.
- Las otras tres tendrán 3 IP Privadas de clase B que le otorgaremos manualmente.
- En todas aprovisionaremos el fichero /etc/resolv.conf que contenga el nameserver 192.168.0.2.
- En todas aprovisionaremos la instalación de nmap mediante shell script.

## Solución

Mirad el Vagranfile.

**NOTA:** Para poner un archivo en /etc necesitamos permisos de root. En eso caso no me vale el "File Provisioning" directamente. Tendré que subir el archivo a un directorio con permisos y luego moverlo usando un aprovisionamiento de Shell Script.

**NOTA:** Evidentemente en aquellas máquinas que no tengan acceso a internet no podré instalar nada mediante el uso de apt-get install.
