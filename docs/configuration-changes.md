# 2. Justificacion y Aplicacion de Modificaciones de Configuracion

## 2.1 Tabla de Cambios Aplicados

| Directiva | Valor Original | Valor Modificado |
| :--- | :--- | :--- |
| **GRUB_TIMEOUT** | [5] | 30 |
| **GRUB_DEFAULT** | [0] | 0 |
| **GRUB_TIMEOUT_STYLE** | (No existia o estaba comentado) | menu |

## 2.2 Justificacion Detallada

* **GRUB_TIMEOUT=30**
    * **Justificacion:** Se aumento el tiempo de espera de 5 segundos a 30 segundos. Esto es fundamental para cumplir con los requisitos del laboratorio y garantizar que el usuario tenga tiempo suficiente para seleccionar manualmente una entrada de recuperacion (como el modo de recuperacion).

* **GRUB_TIMEOUT_STYLE=menu**
    * **Justificacion:** Se añadio esta directiva para obligar al cargador de arranque a **mostrar siempre el menu** de GRUB. Esto asegura la visibilidad de las opciones de arranque, lo cual es vital para el acceso a la recuperacion.

* **GRUB_DEFAULT=0**
    * **Justificacion:** Se mantuvo este valor para asegurar que el sistema continue iniciando la primera entrada del menu por defecto.

## 2.3 Proceso de Aplicacion

Despues de editar `/etc/default/grub`, los cambios se aplicaron ejecutando:
```bash
sudo update-grub