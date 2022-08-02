#!/bin/bash
if [ -z "$1" ]
then
    echo "No se ingresó string de búsqueda."
    exit 0
fi
curl -s https://es.wikipedia.org/wiki/DevOps > ./contenido.txt
# buscando ocurrencia segun parametro...
grep -in "$1" ./contenido.txt | cut -f1 -d: