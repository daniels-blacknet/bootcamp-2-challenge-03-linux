# Reto 2 de la clase 03 - Linux commands and bash scripting

## Problema propuesto:

Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado *Lista_Precios* en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs? 


### Solucion

* Quitar todos los permisos del archivo:

*$ sudo chmod o=rwx,g=,o= Lista_Precios*

otra forma de escribir el cambio:

*$ sudo chmod o+rwx,g-rwx,o-rwx Lista_Precios*


Alternativamente, tambien se puede:

* Crear un grupo de usuarios donde sólo el usuario Roxs sea miembro, por ejemplo: *$ sudo groupadd gruporoxs*
* Asignar el usuario al grupo: *$ sudo usermod -G gruporoxs*
* Cambiar el grupo del archivo: *$ sudo chgrp gruporoxs Lista_Precios*
* Aplicar los permisos al archivo: *$ sudo chmod o+rwx,g+r,g-wx,o-rwx Lista_Precios*

