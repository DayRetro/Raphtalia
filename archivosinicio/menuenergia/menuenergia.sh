#!/bin/bash

# Opciones del menú
option0="Apagar"
option1="Reiniciar"
option2="Bloquear"
option3="Suspender"
option4="Cerrar Sesión"

# Crear las opciones para rofi
options=$(printf "%s\n" "$option0" "$option1" "$option2" "$option3" "$option4")

# Mostrar el menú de rofi y capturar la elección del usuario
chosen="$(echo "$options" | rofi -lines 5 -width 10 -padding 10 -dmenu -p "Menú de energía"| xargs)"

# Ejecutar el comando correspondiente según la elección
case "$chosen" in
    "$option0")
        loginctl poweroff
        ;;
    "$option1")
        loginctl reboot
        ;;
    "$option2")
        loginctl lock-session
        ;;
    "$option3")
        loginctl suspend
        ;;
    "$option4")
        loginctl kill-user "$USER"
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
