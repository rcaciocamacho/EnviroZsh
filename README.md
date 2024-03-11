# EnviroZsh
Script en zsh para la gestión de venv (entornos virutales) en proyectos python.

# Documentación del Script de Entorno Virtual

Este script facilita la gestión de un entorno virtual de Python utilizando Zsh. Permite crear un entorno virtual, activarlo, listar las librerías instaladas, exportar estas librerías a un archivo de requerimientos y simular la desactivación del entorno virtual.

## Características

- **Creación de entorno virtual**: Crea un entorno virtual si no existe.
- **Activación de entorno virtual**: Activa el entorno virtual para su uso.
- **Listado de librerías instaladas**: Muestra las librerías instaladas en el entorno virtual.
- **Exportación de librerías instaladas**: Exporta las librerías instaladas a un archivo `requirements.txt`.
- **Simulación de desactivación de entorno virtual**: Informa al usuario sobre cómo desactivar el entorno virtual manualmente, ya que la desactivación no puede ser automatizada completamente mediante el script.

## Uso

Para utilizar este script, guarda el código en un archivo con extensión `.sh` o `.zsh`, y asegúrate de tener permisos de ejecución. Luego, puedes ejecutar el script con diferentes opciones para gestionar tu entorno virtual.

### Opciones

- **Sin opción**: Crea el entorno virtual si no existe y lo activa.
- **-o**: Lista las librerías instaladas en el entorno virtual.
- **-x**: Exporta las librerías instaladas al archivo `requirements.txt`.
- **-q**: Informa sobre el proceso de desactivación del entorno virtual.

### Ejemplos de Comandos

- Crear y/o activar el entorno virtual:
  ```zsh
  ./tu_script.zsh


## Requisitos Previos

- Python 3
- Zsh
- `virtualenv` o `venv` (este último viene incluido en Python 3.3 y versiones posteriores)

## Uso

Primero, asegúrate de que el script sea ejecutable:

```bash
chmod +x crear_activar_venv.zsh
```

# Luego, puedes ejecutar el script con diferentes opciones según lo que necesites hacer:

## Crear y Activar Entorno Virtual
Simplemente ejecuta el script sin opciones para crear (si no existe) y activar el entorno virtual:

```bash
./crear_activar_venv.zsh
```

## Listar las Librerías Instaladas
Para listar las librerías instaladas en el entorno virtual, usa la opción -o:

```bash
./crear_activar_venv.zsh -o
```

## Exportar Librerías Instaladas a un Archivo de Requerimientos
Para exportar las librerías instaladas en el entorno virtual a un archivo de requerimientos requirements.txt, utiliza la opción -x:

```bash
./crear_activar_venv.zsh -x
```

## Simular el Cierre del Entorno Virtual
Para simular el cierre del entorno virtual dentro del script, usa la opción -q. Ten en cuenta que este cierre es simbólico y se aplica solo dentro del contexto de ejecución del script:

```bash
./crear_activar_venv.zsh -q
```

# Notas Importantes

## La opción -q simula el cierre del entorno virtual solo dentro del script. Para desactivar completamente un entorno virtual, debes usar el comando deactivate manualmente en tu shell.
Los cambios en las variables de entorno realizados por el script no persisten al proceso padre debido a la naturaleza de cómo los scripts interactúan con las shells.