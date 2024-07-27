

Este repositorio contiene una serie de comandos útiles para usuarios de Fedora 40, enfocados en la post-instalación, configuración de drivers y mantenimiento del sistema que he ido recopilando de diferentes fuentes en internet.

## Contenido del Repositorio

### 1. [[Fedora 40 - Guía post instalación]]
Archivo: `post_instalacion_fedora40.md`

Este documento proporciona una guía detallada de las acciones recomendadas a seguir después de instalar Fedora 40. Incluye:
- Actualización inicial del sistema
- Configuración de repositorios adicionales
- Instalación de software esencial
- Optimizaciones del sistema
- Consejos de seguridad básica
- Una guía paso a paso para instalar correctamente los drivers NVIDIA en Fedora 40.
- Preparación del sistema
- Adición de repositorios necesarios
- Instalación de los drivers

### 2. [[Git]]
- Instalar Git
- Configurar Git
- Como generar SSH key
- Como agregar la  SSH key en github
- Primeros Pasos con Git

### 3. [[Actualiza el sistema (Fedora 40)]]
Archivo: `mantenimiento_fedora40.sh`

Este script bash automatiza tareas comunes de mantenimiento y actualización para Fedora 40, incluyendo:
- Actualización del sistema
- Limpieza de cachés y paquetes obsoletos
- Optimización de la base de datos de DNF
- Verificación de la salud del sistema

## Uso

Cada archivo está diseñado para ser fácil de seguir y usar:

- Los archivos `.md` contienen instrucciones paso a paso que puedes seguir en tu terminal.
- El script `.sh` puede ejecutarse directamente en tu sistema. Asegúrate de darle permisos de ejecución con `chmod +x nombre_del_script.sh` antes de ejecutarlo.

## Contribuciones

Las contribuciones son bienvenidas. Si tienes sugerencias para mejorar estas guías o el script, no dudes en abrir un issue o enviar un pull request.

## Licencia

Este proyecto está bajo la Licencia Creative Commons. Ver el archivo [[LICENSE]] para más detalles.