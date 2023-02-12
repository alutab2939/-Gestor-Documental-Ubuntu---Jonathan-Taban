#!/bin/bash

fntFuncion1() {
mkdir -p Alumnos
cd Alumnos
mkdir 1ESO 2ESO 3ESO 4ESO 1BACH 2BACH 1DAM 2DAM
}

fntFuncion2() {
sh ./home/administrador/Escritorio/crearGruposUsuarios.sh
}

fntFuncion3() {
sh ./home/administrador/Escritorio/permisos.sh
}

fntFuncion4(){
sh ./home/administrador/Escritorio/extra.sh
}

#################################
#PROGRAMA PRINCIPAL
################################


#Menu principal
#Cada vez que se selecciona una opción, ejecuta su código y se pone a la
#espera que pulsemos una tecla para volver al menú principal

while [ opcion != "" ]
do
	clear
	echo "****************************"
	echo "**********MENU**************"
	echo "*****************************"
	echo

  echo "1)" "Crear estructura de directorios"
  echo "2)" "Crear usuarios/grupos"
  echo "3)" "Agregar permisos"
  echo "4)" "Funcion extra"
  echo "5)" "Salir"

	read -p "Introduce una opcion: " opcion
	#Comprueba si el valor recogido en opcion es 1,2 o 3, si es otra cosa, se ejecuta *)
   case $opcion in
    	1)
			  fntFuncion1
			  read -p "Press [Enter] key to continue..."
       	;;
    	2)
        		  fntFuncion2
			  read -p "Press [Enter] key to continue..."
        ;;
        3)
        		  fntFuncion3
			  read -p "Press [Enter] key to continue..."
        ;;
        4)
        		  fntFuncion4
			  read -p "Press [Enter] key to continue..."
        ;;
    	5)
        echo "Saliendo..."
        exit 1
        ;;
    	*)
			  echo "Error: Please try again (select 1..2)!"
        read -p "Press [Enter] key to continue..."
		    ;;
   esac
 done
