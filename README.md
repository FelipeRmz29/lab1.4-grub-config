# Lab 1.4: GRUB Configuration and Boot Process Analysis

**Student: Luis Felipe Ramírez Torres** 
**Date: 29/09/2025** 
**Course: Operating Systems** 

## Executive Summary
Este laboratorio se ejecutó en una Máquina Virtual (VM) de [Ubuntu]. El objetivo principal fue analizar y modificar el gestor de arranque **GRUB2**. Se aumentó el tiempo de espera del menú de 5 a **30 segundos** y se implementó la opción para asegurar que el menú siempre esté visible. Además, se investigaron y documentaron en detalle **tres procedimientos críticos de recuperación** del sistema, y se crearon scripts de automatización para copias de seguridad y restauración de la configuración de GRUB.

## Objectives Completed
* [✓] Analizar la estructura y funcionalidad del cargador de arranque GRUB2.
* [✓] Modificar `GRUB_TIMEOUT` de forma segura de 5 a 30 segundos.
* [✓] Implementar la directiva `GRUB_TIMEOUT_STYLE=menu`.
* [✓] Investigar y documentar los procedimientos de recuperación (GRUB Rescue, Live USB).
* [✓] Aplicar las mejores prácticas de seguridad (Snapshots, copias de seguridad de archivos).

## Main Changes Implemented
Las modificaciones se realizaron en el archivo `/etc/default/grub` y se aplicaron con `sudo update-grub`.

| Directiva | Valor Original | Valor Final |
| :--- | :--- | :--- |
| `GRUB_TIMEOUT` | 5 | **30** |
| `GRUB_DEFAULT` | 0 | **0** |
| `GRUB_TIMEOUT_STYLE` | (Ausente o Hidden) | **menu** |

## Key Learnings
* Se comprobó que el archivo **`/etc/default/grub`** es el único archivo de configuración que debe ser editado por el usuario.
* Se confirmó la necesidad de ejecutar **`sudo update-grub`** para compilar las configuraciones en el archivo **`/boot/grub/grub.cfg`**.
* Se entendió la importancia de las variables del kernel (ej: `quiet splash`) para el proceso de arranque.
* Se dominaron los procedimientos de **copia de seguridad y restauración** para configuraciones críticas.

## Evidence Files
### Screenshots (Evidencia Visual)

* `01-original-boot-menu.png`: Menú GRUB antes de la modificación.
* `03-grub-config-after.png`: Contenido de `/etc/default/grub` modificado.
* `04-modified-boot-menu.png`: Menú GRUB con el nuevo timeout de 30s.
* `05-update-grub-output.png`: Salida exitosa del comando `sudo update-grub`.

### Documentation & Analysis

* `docs/configuration-changes.md`: Justificación de todos los cambios aplicados.
* `docs/grub-recovery-guide.md`: Guía detallada sobre GRUB Rescue Mode y recuperación con Live USB/chroot.
* `configs/grub-cfg-analysis.txt`: Extractos del archivo generado (`grub.cfg`) que demuestran la estructura interna.

### Automation Scripts

* `scripts/grub-backup.sh`: Script funcional para respaldar la configuración de GRUB.
* `scripts/grub-restore.sh`: Script funcional para restaurar la configuración y regenerar el archivo `grub.cfg`.
