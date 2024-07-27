
#### Configurar actualizaciones más rápidas


    sudo nano /etc/dnf/dnf.conf

Copiar y reemplazar el siguiente texto:

```
[main] 
gpgcheck=True 
installonly_limit=3 
clean_requirements_on_remove=True 
best=False 
skip_if_unavailable=True 
fastestmirror=True 
max_parallel_downloads=10 
deltarpm=true

```


#### Agrega los repositorios RPM Fusion

- `sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm`
 
- Instala app-stream metadata usando:
- `sudo dnf groupupdate core`

#### [[Actualiza el sistema (Fedora 40)]]

- `sudo dnf -y update`
- `sudo dnf -y upgrade --refresh`
- Reinicia 
- `sudo reboot now`

#### Instalar los drives de Nvidia

1. Filtrar todos los dispositivos PCI conectados a tu sistema y filtrar con 'grep'  para mostrar solo las tarjetas graficas `/sbin/lspci | grep -e VGA `
2. Determinar qué tarjeta gráfica (o chip) tienes en tu sistema Linux. `lspci -vnn | grep VGA`
3. Instala el driver de Nvidia 
- `sudo dnf install akmod-nvidia`
4. Habilitar la compatibilidad con CUDA para el driver, lo que permite verificar las estadísticas de tu tarjeta NVIDIA desde el terminal usando `nvidia-smi`: 
 -  `sudo dnf install xorg-x11-drv-nvidia-cuda`
5. Habilitar nvidia-modeset
- `sudo grubby --update-kernel=ALL --args="nvidia-drm.modeset=1"` 
6. Para que los cambios se ejecuten, reinicia el sistema

#### Actualiza el firmware:

```
sudo fwupdmgr refresh --force
```
```
sudo fwupdmgr get-devices # Lists devices with available updates.
```
```
sudo fwupdmgr get-updates # Fetches list of available updates.
```
```
sudo fwupdmgr update
```

#### En caso de que el funcionamiento de la batería no sea óptimo, instala tlp de la siguiente manera:
`sudo dnf install tlp tlp-rdw`
- Enmascarar power-profiles-daemon mediante:
- `sudo systemctl mask power-profiles-daemon`
- Instala Powertop mediante:
- `sudo dnf install powertop`
- `sudo powertop --auto-tune`

#### Media Codecs

- Para reproducir archivos multimedia de manera adecuada, instalar los siguientes Codecs:

```
sudo dnf swap 'ffmpeg-free' 'ffmpeg' --allowerasing # Switch to full FFMPEG.
```
```
sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin # Installs gstreamer components. Required if you use Gnome Videos and other dependent applications.
```
```
sudo dnf update @sound-and-video # Installs useful Sound and Video complement packages.
```
```
sudo dnf install Multimedia
```


#### [Instalar y configurar GIT](Git.md) 
