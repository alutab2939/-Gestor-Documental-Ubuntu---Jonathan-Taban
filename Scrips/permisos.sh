#!/bin/bash

#Dar permisos a los grupos de 1ESO
setfacl -m g:gr_1ESO_rwx:rwx /home/administrador/Escritorio/Alumnos/1ESO
setfacl -m g:gr_1ESO_rx:rx /home/administrador/Escritorio/Alumnos/2ESO
setfacl -m g:gr_1ESO_rx:rx /home/administrador/Escritorio/Alumnos/3ESO
setfacl -m g:gr_1ESO_rx:rx /home/administrador/Escritorio/Alumnos/4ESO

#Dar permisos a los grupos de 2ESO
setfacl -m g:gr_2ESO_rwx:rwx /home/administrador/Escritorio/Alumnos/2ESO
setfacl -m g:gr_2ESO_rx:rx /home/administrador/Escritorio/Alumnos/1ESO
setfacl -m g:gr_2ESO_rx:rx /home/administrador/Escritorio/Alumnos/3ESO
setfacl -m g:gr_2ESO_rx:rx /home/administrador/Escritorio/Alumnos/4ESO

#Dar permisos a los grupos de 3ESO
setfacl -m g:gr_3ESO_rwx:rwx /home/administrador/Escritorio/Alumnos/3ESO
setfacl -m g:gr_3ESO_rx:rx /home/administrador/Escritorio/Alumnos/1ESO
setfacl -m g:gr_3ESO_rx:rx /home/administrador/Escritorio/Alumnos/2ESO
setfacl -m g:gr_3ESO_rx:rx /home/administrador/Escritorio/Alumnos/4ESO

#Dar permisos a los grupos de 4ESO
setfacl -m g:gr_4ESO_rwx:rwx /home/administrador/Escritorio/Alumnos/4ESO
setfacl -m g:gr_4ESO_rx:rx /home/administrador/Escritorio/Alumnos/1ESO
setfacl -m g:gr_4ESO_rx:rx /home/administrador/Escritorio/Alumnos/2ESO
setfacl -m g:gr_4ESO_rx:rx /home/administrador/Escritorio/Alumnos/3ESO

#Dar permisos a los grupos de 1BACH
setfacl -m g:gr_1BACH_rwx:rwx /home/administrador/Escritorio/Alumnos/1BACH
setfacl -m g:gr_1BACH_rx:rx /home/administrador/Escritorio/Alumnos/2BACH

#Dar permisos a los grupos de 2BACH
setfacl -m g:gr_2BACH_rwx:rwx /home/administrador/Escritorio/Alumnos/2BACH
setfacl -m g:gr_2BACH_rx:rx /home/administrador/Escritorio/Alumnos/1BACH

#Dar permisos a los grupos de DAM
setfacl -m g:gr_DAM_rwx:rwx /home/administrador/Escritorio/Alumnos/1ESO
setfacl -m g:gr_DAM_rwx:rwx /home/administrador/Escritorio/Alumnos/2ESO
setfacl -m g:gr_DAM_rwx:rwx /home/administrador/Escritorio/Alumnos/3ESO
setfacl -m g:gr_DAM_rwx:rwx /home/administrador/Escritorio/Alumnos/4ESO
setfacl -m g:gr_DAM_rwx:rwx /home/administrador/Escritorio/Alumnos/1BACH
setfacl -m g:gr_DAM_rwx:rwx /home/administrador/Escritorio/Alumnos/2BACH
setfacl -m g:gr_DAM_rwx:rwx /home/administrador/Escritorio/Alumnos/1DAM
setfacl -m g:gr_DAM_rwx:rwx /home/administrador/Escritorio/Alumnos/2DAM

#Quitar permisos a other de todas las carpetas
setfacl -m other:0 /home/administrador/Escritorio/Alumnos/1ESO
setfacl -m other:0 /home/administrador/Escritorio/Alumnos/2ESO
setfacl -m other:0 /home/administrador/Escritorio/Alumnos/3ESO
setfacl -m other:0 /home/administrador/Escritorio/Alumnos/4ESO
setfacl -m other:0 /home/administrador/Escritorio/Alumnos/1BACH
setfacl -m other:0 /home/administrador/Escritorio/Alumnos/2BACH
setfacl -m other:0 /home/administrador/Escritorio/Alumnos/1DAM
setfacl -m other:0 /home/administrador/Escritorio/Alumnos/2DAM

#chmod
sudo chmod -R 770 Alumnos/
sudo chmod -R 770 /home/administrador/Escritorio/Alumnos/1ESO
sudo chmod -R 770 /home/administrador/Escritorio/Alumnos/2ESO
sudo chmod -R 770 /home/administrador/Escritorio/Alumnos/3ESO
sudo chmod -R 770 /home/administrador/Escritorio/Alumnos/4ESO
sudo chmod -R 770 /home/administrador/Escritorio/Alumnos/1BACH
sudo chmod -R 770 /home/administrador/Escritorio/Alumnos/2BACH
sudo chmod -R 770 /home/administrador/Escritorio/Alumnos/1DAM
sudo chmod -R 770 /home/administrador/Escritorio/Alumnos/2DAM
