#!/bin/bash
export DISPLAY=:0
sleep 5

# Evitar apagado de pantalla y salvapantallas
xset s noblank
xset s off
xset -dpms

# Ocultar el cursor después de 0.5s sin mover
unclutter -idle 0.5 -root &

# Evitar advertencias por cierre incorrecto
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences

# Lanzar Chromium en modo kiosco con autoplay habilitado
/usr/bin/chromium-browser \
  --noerrdialogs \
  --disable-infobars \
  --kiosk \
  --autoplay-policy=no-user-gesture-required \
  https://www.youtube.com/canalsur/live
