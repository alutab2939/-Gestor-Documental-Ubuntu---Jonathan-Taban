#!/bin/bash

#Crear Grupos
groupadd gr_ESO_rx
groupadd gr_BACH_rx
groupadd gr_DAM_rx
groupadd gr_Prof_rx

#Crear Usuarios
useradd -g gr_ESO_rx -d /home/alu_ESO -m -s /bin/bash alu_ESO
useradd -g gr_BACH_rx -d /home/alu_BACH -m -s /bin/bash alu_BACH
useradd -g gr_DAM_rx -d /home/alu_DAM -m -s /bin/bash alu_DAM
useradd -g gr_Prof_rx -d /home/usu_Prof -m -s /bin/bash usu_Prof

#Añadir Usuarios a Grupos
usermod -a -G alu_ESO  gr_1ESO_rx,gr_2ESO_rx,gr_3ESO_rx,gr_4ESO_rx
usermod -a -G alu_BACH gr_1BACH_rx,gr_2BACH_rx
usermod -a -G alu_DAM gr_DAM_rx
usermod -a -G usu_Prof gr_1ESO_rx,gr_2ESO_rx,gr_3ESO_rx,gr_4ESO_rx,gr_1BACH_rx,gr_2BACH_rx,gr_DAM_rx

#Cambiar contraseña
passwd alu_ESO
passwd alu_BACH
passwd alu_DAM
passwd usu_Prof
