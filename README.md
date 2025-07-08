------------------------------

A. Instalar herramientas:
   sudo apt install -y xdotool unclutter sed

B. Configurar auto login:
   sudo raspi-config → Boot Options → Autologin

C. Crear archivo `/home/pi/kiosk.sh` con:
  sudo cp kiosk.sh /home/pi/kiosk.sh

D. Crear servicio:
   sudo cp kiosk.service /lib/systemd/system/kiosk.service



E. Activar servicio:
   sudo systemctl daemon-reload
   sudo systemctl enable kiosk.service
   sudo systemctl start kiosk.service

F. Verificar que está funcionando:
   sudo -u pi DISPLAY=:0 xset q  (Debe decir "DPMS is Disabled")

