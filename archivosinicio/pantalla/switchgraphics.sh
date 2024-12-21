#!/bin/bash

# options do be displayed
option0="Boton sin accion"
option1="Integrada"
option2="Hibrida"
option3="Nvidia"

# options passed to variable
options="$option0\n$option1\n$option2\n$option3"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p "Cambio de grafica")"
case $selected in
    $option0)
		bash -c "sh ./archivosinicio/menugrafica/amd.sh";;
    $option1)
        bash -c "sh /home/dayretro/.archivosinicio/menugrafica/amd.sh";;
    $option2)
        bash -c "sh /home/dayretro/.archivosinicio/menugrafica/hibrida.sh";;    
	$option3)
        	bash -c "sh /home/dayretro/.archivosinicio/menugrafica/nvidia.sh";;

esac
