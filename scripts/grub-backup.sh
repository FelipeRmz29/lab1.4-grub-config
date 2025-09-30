#!/bin/bash
# Script para realizar copia de seguridad de los archivos de configuracion de GRUB

# Directorio de respaldo dentro de la carpeta personal del usuario
BACKUP_DIR="/home/$USER/grub_backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "Iniciando copia de seguridad de GRUB..."

# 1. Crear el directorio de backups si no existe
mkdir -p "$BACKUP_DIR"

# 2. Copiar los archivos criticos con un nombre basado en la fecha
# Se usa 'sudo' porque '/etc/default/grub' es un archivo del sistema.
sudo cp /etc/default/grub "$BACKUP_DIR/grub-default-$TIMESTAMP.bak"
sudo cp /boot/grub/grub.cfg "$BACKUP_DIR/grub-cfg-$TIMESTAMP.bak"

if [ $? -eq 0 ]; then
    echo "✅ Copia de seguridad completada exitosamente en: $BACKUP_DIR"
else
    echo "❌ ERROR: No se pudo completar la copia de seguridad. Verifique permisos o rutas."
fi
