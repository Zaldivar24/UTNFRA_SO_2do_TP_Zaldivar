#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 <usuario_clave> <archivo_lista>"
    exit 1
fi

USUARIO_CLAVE=$1
ARCHIVO_LISTA=$2

if [ ! -f "$ARCHIVO_LISTA" ]; then
    echo "Error: Archivo $ARCHIVO_LISTA no encontrado"
    exit 1
fi

CLAVE=$(sudo grep "^$USUARIO_CLAVE:" /etc/shadow | awk -F':' '{print $2}')

if [ -z "$CLAVE" ]; then
    echo "Error: Usuario $USUARIO_CLAVE no encontrado en /etc/shadow"
    exit 1
fi

while IFS=',' read -r usuario grupo home; do
    [ -z "$usuario" ] && continue
    [[ "$usuario" == \#* ]] && continue

    if ! getent group "$grupo" > /dev/null 2>&1; then
        sudo groupadd "$grupo"
        echo "Grupo $grupo creado"
    else
        echo "Grupo $grupo ya existe"
    fi

    if ! id "$usuario" > /dev/null 2>&1; then
        sudo useradd -m -s /bin/bash -g "$grupo" -p "$CLAVE" "$usuario"
        echo "Usuario $usuario creado en grupo $grupo"
    else
        echo "Usuario $usuario ya existe"
    fi

done < "$ARCHIVO_LISTA"

echo "Proceso completado."
