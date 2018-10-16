# Práctica 3

## Cambiando el proveedor de las BOXES

- Instalar el Hypervisor KVM (qemu y libvirt en caso de que sea necesario).
- Descargar una BOX que se pueda ejecutar usando tanto el hypervisor de VirtualBox como el hypervisor kvm (libvirt).
- Crear un Vagranfile (dos diferentes) para arrancar cada una aprovisionando mediante SHELL Script la creación de dos usuarios que se llamen como tus dos apellidos.
- Deberás crear las carpetas HOME adecuadas.

## Solución

Primero tenemos que localizar una box que esté disponible para los dos hypervisores. Por ejemplo _Debian/jessie64_.

Añadimos esas boxes a nuestro sistema:

```bash
 vagrant box add debian/jessie64
 vagrant box add --provider libvirt debian/jessie64
```

Para arrancar dos máquina virtuales (una para cada proveedor) debo crear dos directorios:

```bash
mkdir vbox
mkdir libvirt
```

En cada una de esas carpetas creo un Vagrantfile
