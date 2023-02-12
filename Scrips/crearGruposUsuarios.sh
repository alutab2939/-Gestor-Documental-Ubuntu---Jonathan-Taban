#!/bin/bash

#Crear Grupos
groupadd gr_1ESO_rwx
groupadd gr_1ESO_rx
groupadd gr_2ESO_rwx
groupadd gr_2ESO_rx
groupadd gr_3ESO_rwx
groupadd gr_3ESO_rx
groupadd gr_4ESO_rwx
groupadd gr_4ESO_rx
groupadd gr_1BACH_rwx
groupadd gr_1BACH_rx
groupadd gr_2BACH_rwx
groupadd gr_2BACH_rx
groupadd gr_DAM_rwx

#Crear Usuarios
useradd -g gr_1ESO_rwx -d /home/alu_1ESO -m -s /bin/bash alu_1ESO
useradd -g gr_2ESO_rxw -d /home/alu_2ESO -m -s /bin/bash alu_2ESO
useradd -g gr_3ESO_rxw -d /home/alu_3ESO -m -s /bin/bash alu_3ESO
useradd -g gr_4ESO_rxw -d /home/alu_4ESO -m -s /bin/bash alu_4ESO
useradd -g gr_1BACH_rxw -d /home/alu_1BACH -m -s /bin/bash alu_1BACH
useradd -g gr_2BACH_rxw -d /home/alu_2BACH -m -s /bin/bash alu_2BACH
useradd -g gr_DAM_rxw -d /home/alu_1DAM -m -s /bin/bash alu_1DAM
useradd -g gr_DAM_rxw -d /home/alu_2DAM -m -s /bin/bash alu_2DAM

#Añadir Usuarios a Grupos
usermod -a -G alu_1ESO gr_2ESO_rx,gr_3ESO_rx,gr_4ESO_rx
usermod -a -G alu_2ESO gr_1ESO_rx,gr_3ESO_rx,gr_4ESO_rx
usermod -a -G alu_3ESO gr_1ESO_rx,gr_2ESO_rx,gr_4ESO_rx
usermod -a -G alu_4ESO gr_1ESO_rx,gr_2ESO_rx,gr_3ESO_rx
usermod -a -G alu_1BACH gr_2BACH_rx
usermod -a -G alu_2BACH gr_1BACH_rx
usermod -a -G alu_1DAM root,daemon,bin,sys,adm,tty,disk,lp,mail,uucp,man,proxy,kmem
usermod -a -G alu_2DAM root,daemon,bin,sys,adm,tty,disk,lp,mail,uucp,man,proxy,kmem

#Cambiar contraseña
passwd alu_1ESO
passwd alu_2ESO
passwd alu_3ESO
passwd alu_4ESO
passwd alu_1BACH
passwd alu_2BACH
passwd alu_1DAM
passwd alu_2DAM
