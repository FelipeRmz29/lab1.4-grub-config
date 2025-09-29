# 4. Lecciones Aprendidas

1.  **Separacion de Archivos:** Es crucial entender que solo se debe modificar el archivo fuente **`/etc/default/grub`**. El archivo `/boot/grub/grub.cfg` es generado y cualquier cambio manual se perderia al ejecutar `update-grub`.
2.  **El Comando update-grub:** Este comando actua como un compilador, traduciendo las directivas legibles por humanos a la estructura de codigo que GRUB2 necesita para ejecutarse, un paso esencial despues de cualquier modificacion.
3.  **Seguridad:** Se confirmo que las **instantaneas de la VM** y copias de seguridad de archivos (`.backup`) son indispensables para garantizar la recuperacion inmediata en caso de errores de configuracion criticos.
4.  **GRUB Timeout Styles:** Se identifico que la variable `GRUB_TIMEOUT_STYLE=menu` es necesaria para que el menu de arranque se muestre en muchos entornos.