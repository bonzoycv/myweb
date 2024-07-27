#!/bin/bash

#Script que actualiza todo el sistema apt + flatpak + snap 
#usar con cuidado
## Colocar el archivo en /home/$USER/bin Es posible que se deba crear el subdirectorio bin.

## Hacer ejecutable el script

## sudo chmod +x update.sh

## Para crear un alias, agregar al archivo .bashrc que se encuentra en el directorio /home/$USER/

## alias update="update.sh"

## Actualizar paquetes

echo "Ingresa tu contraseña para actualizar el sistema"

## Actualizar paquetes y distribución
sudo dnf upgrade --refresh
#sudo dnf update

## Limpiar instalación y paquetes no necesarios
sudo dnf autoremove
sudo dnf clean all

## Actualiza flatpak, el comando -y aprueba continuar con la actualización
flatpak update -y

## Reparar una instalación flatpak  en caso de ocurrir un problema
sudo flatpak repair

## Actualizar una instalación o runtime y desintalar aplicaciones innecesarias
flatpak update -y
flatpak uninstall --unused -y


## Informa que se ha realizado la actualización con éxito

echo "El sistema se ha actualizado!"

#Crea un log del proceso realizado
#sudo date >> "/home/$USER/updatelog.txt"

#Muestra el log almacenado en el archivo de texto
#sudo cat "/home/$USER/updatelog.txt"

## neofetch genera información del equipo
## Para instalar fastfetch usar el siguiente comando - sudo apt install fastfetch
fastfetch

exit
