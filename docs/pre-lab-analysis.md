# 1. Analisis del Estado Inicial de GRUB2

## 1.1 Configuracion Base en /etc/default/grub (Original)

Valores extraidos antes de cualquier modificacion:

| Directiva | Valor Original | Descripcion |
| :--- | :--- | :--- |
| **GRUB_TIMEOUT** | [5] | Tiempo de espera en segundos para el menu de arranque. |
| **GRUB_DEFAULT** | [0] | Entrada predeterminada que se inicia automaticamente. |
| **GRUB_CMDLINE_LINUX_DEFAULT** | "[quiet splash]" | Parametros pasados al kernel de Linux. |

## 1.2 Analisis del Menu de Arranque

1.  **Version de GRUB:** [2.12-1ubuntu7.3].
2.  **Tiempo de Espera Medido:** [5].
3.  **Numero de Entradas:** [4].