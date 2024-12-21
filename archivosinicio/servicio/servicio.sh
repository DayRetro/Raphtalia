#fondo de pantalla
hsetroot -fill /home/dayretro/Raphtalia/WallpaperRaphtalia.jpg &

#polybar
polybar &

#inicialización de polkit

if [ -x "$(command -v apt)" ]; then
  if ! pgrep -af polkit-gnome-authentication-agent-1 > /dev/null; then /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 & fi
elif [ -x "$(command -v pacman)" ]; then
  if ! pgrep -af polkit-gnome-authentication-agent-1 > /dev/null; then /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & fi
fi


