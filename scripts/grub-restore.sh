#!/bin/bash
# Script para restaurar la configuracion de GRUB y aplicar cambios

BACKUP_FILE="/etc/default/grub.backup"

echo "Iniciando proceso de restauracion de GRUB..."

# 1. Verificar si el archivo de backup existe
if [ -f "$BACKUP_FILE" ]; then
    # 2. Restaurar /etc/default/grub desde el backup
    sudo cp "$BACKUP_FILE" /etc/default/grub
    echo "1. Restaurado /etc/default/grub desde el backup original."

    # 3. Generar el nuevo archivo grub.cfg y aplicarlo
    sudo update-grub
    
    if [ $? -eq 0 ]; then
        echo "✅ Restauracion completada. Reinicie para verificar el menu GRUB original."
    else
        echo "❌ ERROR: El comando update-grub fallo. Revise la configuracion."
    fi
else
    echo "🚨 ERROR: Archivo de backup $BACKUP_FILE no encontrado."
fi
