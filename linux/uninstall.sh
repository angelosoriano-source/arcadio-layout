#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}=======================================${NC}"
echo -e "${RED}  Desinstalador de Arcadio (XKB)       ${NC}"
echo -e "${BLUE}=======================================${NC}"

# 1. Verificación de permisos
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Error: Ejecuta este script con sudo (sudo ./uninstall.sh)${NC}"
  exit 1
fi

XKB_SYMBOLS_DIR="/usr/share/X11/xkb/symbols"
EVDEV_XML="/usr/share/X11/xkb/rules/evdev.xml"
BACKUP_XML="${EVDEV_XML}.backup_arcadio"

# 2. Eliminar los archivos de teclado
echo "Eliminando archivos de distribución..."
rm -f "$XKB_SYMBOLS_DIR/arcadio_ansi"
rm -f "$XKB_SYMBOLS_DIR/arcadio_iso"

# 3. Restaurar el menú gráfico (evdev.xml)
if [ -f "$BACKUP_XML" ]; then
    echo "Restaurando la configuración original del menú de teclados..."
    mv "$BACKUP_XML" "$EVDEV_XML"
else
    echo -e "${BLUE}Nota: No se encontró el archivo de backup de evdev.xml.${NC}"
    echo "Los archivos del teclado fueron borrados, pero el nombre podría seguir apareciendo en el menú."
fi

# 4. Limpiar caché
echo "Limpiando la caché del sistema..."
rm -rf /var/lib/xkb/*

echo -e "${GREEN}¡Desinstalación completada!${NC}"
echo -e "Por favor, cierra sesión o reinicia tu computadora."
echo -e "${BLUE}=======================================${NC}"
