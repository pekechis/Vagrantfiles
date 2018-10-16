# Práctica 2

## Creación de una nueva Box con vagrant

Partiendo de una box ubuntu/xenial64

- Arrancar esa box, entrar en ella y desde la línea de comando instalar los siguientes paquetes:

  - nmap
  - chkrootkit
  - john the ripper
  - wireshark
  - snort

- Una vez instalado todo el la máquina virtual crear una nueva Box partiendo de es Máquina Virtual y pásala al profesor.

## Solución

Creo el Vagrantfile correspondiente a ese box, arranco la máquina virtual y enntro en ella

```bash
    vagrant init ubuntu/trusty
    vagrant up
    vagrant ssh
```

Una vez dentro de la máquina instalo las aplicaciones seleccionadas:

```bash
sudo apt-get update
sudo apt-get install -y nmap
sudo apt-get install -y chkrootkit
sudo apt-get install -y wireshark
sudo apt-get install -y snort
```

Salgo de la máquina virtual y la para para poder empaquetarla:

```bash
vagrant halt
```

Obtengo el ID de la máquina virtual en la que he creado todo para poder empaquetarla luego

```bash
vboxmanage list vms
```

Reempaqueto esa VM que tiene todo instalado

```bash
vagrant package --base ID_de_la_VM
```

Y nos creará un archivo .box que podremos añadir posteriormente usando la orden vagrant box add.
