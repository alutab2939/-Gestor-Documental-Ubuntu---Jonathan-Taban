#!/bin/bash

#Primero creo el directorio principal de proyectos al que le dare permisos, despues activo la herencia
#y creo los demas directorios.

mkdir proyectos

setfacl  d:g:sinformacion:rwx ./proyectos
setfacl  g:sinformacion:rwx ./proyectos
setfacl  d:other:0 ./proyectos
setfacl  other:0 ./proyectos

mkdir -p ./proyectos/{pruebas,src}

setfacl  g:proyectos_r:r ./proyectos
setfacl  g:proyectos_w:w ./proyectos
setfacl  g:proyectos_x:x ./proyectos

setfacl  g:pruebas_r:r ./proyectos/pruebas
setfacl  g:pruebas_w:w ./proyectos/pruebas
setfacl  g:pruebas_x:x ./proyectos/pruebas
setfacl  d:g:pruebas_r:r ./proyectos/pruebas
setfacl  d:g:pruebas_w:w ./proyectos/pruebas
setfacl  d:g:pruebas_x:x ./proyectos/pruebas

setfacl  d:g:src_r:r ./proyectos/src
setfacl  d:g:src_w:w ./proyectos/src
setfacl  d:g:src_x:x ./proyectos/src
setfacl  g:src_r:r ./proyectos/src
setfacl  g:src_w:w ./proyectos/src
setfacl  g:src_x:x ./proyectos/src
