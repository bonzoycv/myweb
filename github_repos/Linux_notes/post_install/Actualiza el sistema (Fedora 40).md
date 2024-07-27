
##### `alias update="update.sh"`

##### Usa update o upgrade según tus necesidades 
## `Update` 
#`dnf update` 
##### - actualiza los paquetes instalados a sus versiones más recientes disponibles.
##### - no descarga nuevamente los metadatos de los repositorios si ya están actualizados.

## `Upgrade`
#`dnf upgrade`
##### - puede instalar nuevos paquetes si son necesarios para satisfacer dependencias.

##### - el flag `--refresh` fuerza a DNF a descargar nuevamente los metadatos de los repositorios, asegurando que tienes la información más reciente sobre los paquetes disponibles.



## Usar el script

#!/bin/bash
echo "Ingresa tu contraseña para actualizar el sistema"

## Actualizar paquetes y distribución

sudo dnf upgrade --refresh
o
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



#### Opcional
##### Informa que se ha realizado la actualización con éxito

echo "El sistema se ha actualizado!"

#Crea un log del proceso realizado
#sudo date >> "/home/$USER/updatelog.txt"

#Muestra el log almacenado en el archivo de texto
#sudo cat "/home/$USER/updatelog.txt"



exit