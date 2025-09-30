#!/bin/bash
# Script para recopilar informacion basica del sistema y GRUB

echo "--- Informacion del Sistema y GRUB ---"
echo ""

echo "1. Informacion de la Distribucion:"
lsb_release -a
echo "-----------------------------------"

echo "2. Informacion del Kernel y Arquitectura:"
uname -a
echo "-----------------------------------"

echo "3. Dispositivos de Bloque (Discos/Particiones):"
lsblk
echo "-----------------------------------"

echo "4. Version de GRUB Instalada:"
sudo grub-install --version
echo "-----------------------------------"

