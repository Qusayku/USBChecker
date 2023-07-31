#!/bin/bash

# Ausgabe einer Nachricht
   
   echo "Dieses skript startet, warten sie ..."

   sleep 2

   echo "Made By Qusay"

   sleep 1

   echo "Du kannst wenn du Linux Nutzer bist eingeben -> lsusb womit du die Benennung deines USB Sticks siehst"

# Gibt die Ausgabe in einer sogenannten Variable
usb_devices=$(lsusb)

# Gibt die Benennung des angeschlossenen USB Sticks ein
read -p "Gib die Benennung ein, dass du überprüfen möchtest: " usb_name

#Überprüft ob es in lsusb gefunden wird
if echo "$usb_devices" | grep -q "$usb_name"; then
    echo "das sogenannte'$usb_name' USB Stick ist angeschlossen"

else
   
   echo "das sogenannte '$usb_name' wurde nicht gefunden"
fi

   