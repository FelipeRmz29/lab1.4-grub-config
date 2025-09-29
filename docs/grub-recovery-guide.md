

### 3. `grub-recovery-guide.md` (Guia de Recuperacion)

Este archivo es el resultado de tu investigacion (Parte 3).

```markdown
# 3. Guia de Recuperacion de GRUB2 (Ubuntu/Debian)

## 3.1 Metodo 1: Recuperacion desde Modo 'grub rescue>'

Este modo aparece cuando GRUB no puede localizar archivos criticos.

1.  **Identificar el Disco y la Particion Raiz:**
    * Comando: `ls` (Busca la particion que contiene los archivos, ej: `(hd0,msdos1)`).
2.  **Establecer la Particion Raiz y el Prefijo:**
    * Comando: `set root=(hdX,Y)`
    * Comando: `set prefix=(hdX,Y)/boot/grub`
3.  **Cargar Modulos y el Modo Normal:**
    * Comando: `insmod normal`
    * Comando: `normal`

## 3.2 Metodo 2: Reinstalacion desde un Live USB/DVD (Metodo Chroot)

Este es el metodo mas robusto para reparar GRUB si el sistema no arranca.

1.  **Preparacion:** Iniciar la computadora con un Live USB/DVD de Linux.
2.  **Identificar la Particion Raiz:**
    * Comando: `sudo fdisk -l` (o `lsblk`) para encontrar la particion raiz de tu instalacion danada (ej: `/dev/sda1`).
3.  **Montar la Particion Raiz y Sistemas Criticos:**
    * Comando: `sudo mount /dev/sda1 /mnt`
    * Comando: `sudo mount --bind /dev /mnt/dev`
    * Comando: `sudo mount --bind /proc /mnt/proc`
    * Comando: `sudo mount --bind /sys /mnt/sys`
4.  **Entrar al Entorno Chroot (Cambio de Raiz):**
    * Comando: `sudo chroot /mnt`
5.  **Reinstalar GRUB y Regenerar Configuracion:**
    * Comando: `grub-install /dev/sda` (¡Apunta al disco!)
    * Comando: `update-grub`
6.  **Salir y Reiniciar:** `exit`, y luego `sudo reboot`.

## 3.3 Metodo 3: Restauracion de Copias de Seguridad (Si el SO Arranca)

Si el sistema arranca pero el menu esta roto debido a un error de configuracion:

1.  Restaurar el archivo de configuracion fuente:
    * Comando: `sudo cp /etc/default/grub.backup /etc/default/grub`
2.  Regenerar el archivo binario:
    * Comando: `sudo update-grub`