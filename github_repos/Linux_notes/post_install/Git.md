*Este documento proporciona una guía básica para usar Git en Fedora, incluyendo instalación, configuración inicial y operaciones comunes.*

## Instalación y Configuración

### Instalar Git

```
sudo dnf install git
```

### Configurar Git

```
git config --global user.name "nombre"
git config --global user.email "correo@dominio.com"
```

### Generar y configurar SSH Key

```
ssh-keygen -t rsa -b 4096 -C "correo@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```

### Añade SSH Key a GitHub

```
cat /root/.ssh/id_rsa.pub
```
- Copia el contenido y añádelo a tu cuenta de GitHub.

### Actualizar el sistema

```
sudo dnf upgrade -y
```


### ## Primeros Pasos con Git

1. Crea un nuevo repositorio en GitHub.
2. Inicializa un repositorio local (si aún no existe):

```
git init
```

3. Verifica el estado del repositorio:
```
git status
```

4. Conecta el repositorio local con GitHub:
```
git remote add origin git@github.com:usuario/repositorio.git
```

5. Prepara los archivos para el commit:
```
git add .  # Añade todos los archivos
# o
git add nombre_archivo  # Añade archivos específicos
```

6. Realiza el commit:
```
git commit -m "Mensaje descriptivo del commit"
```

7. Sube los cambios a GitHub:
```
git push -u origin main  # La primera vez
git push  # Las siguientes veces
```



# Operaciones Comunes

1. Actualizar el repositorio local
```
git pull origin main
```

2. Verificar el estado y el historial
```
git status  # Muestra el estado actual del repositorio
git log     # Muestra el historial de commits
```

3. Cambiar la rama principal
```
git branch -m master main  # Cambia de 'master' a 'main'
```

4. Forzar un push (usar con precaución)
```
git push -f origin main  # Sobrescribe el historial remoto
```

5. Eliminar archivos
```
git rm nombre_archivo
```
```
git commit -m "Eliminado nombre_archivo"
```
```
git push origin main
```

## Recordatorios Importantes

- Hacer pull antes de push para evitar conflictos.
- Usar mensajes de commit descriptivos.
- Tener cuidado con los comandos que pueden sobrescribir el historial (git push -f).
- Mantener tu repositorio local actualizado.


