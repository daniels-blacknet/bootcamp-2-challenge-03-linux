#!/bin/bash
mkdir -p ./foo/dummy ./foo/empty
if [ -z "$1" ]
then
    contenido="Que me gusta bash!!!!"
else
    contenido="$1"
fi
echo "$contenido" > ./foo/dummy/file1.txt
touch ./foo/dummy/file2.txt
cat ./foo/dummy/file1.txt > ./foo/dummy/file2.txt
mv ./foo/dummy/file2.txt ./foo/empty/
