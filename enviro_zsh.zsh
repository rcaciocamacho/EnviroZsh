#!/bin/zsh

# Nombre del entorno virtual
VENV_NAME="venv"

# Función para activar el entorno virtual
activate_venv() {
  echo "Activando el entorno virtual..."
  source $VENV_NAME/bin/activate
}

# Función para listar las librerías instaladas
list_installed_libraries() {
  if [[ -d $VENV_NAME ]]; then
    activate_venv
    echo "Librerías instaladas en el entorno virtual:"
    pip list
  else
    echo "El entorno virtual no existe. Por favor, créalo primero."
  fi
}

# Función para exportar las librerías instaladas a un archivo de requerimientos
export_installed_libraries() {
  if [[ -d $VENV_NAME ]]; then
    activate_venv
    echo "Exportando las librerías instaladas al archivo requirements.txt..."
    pip freeze > requirements.txt
  else
    echo "El entorno virtual no existe. Por favor, créalo primero."
  fi
}

# Función para "cerrar" el entorno virtual
deactivate_venv() {
  echo "Cerrando el entorno virtual..."
  # Simulación de 'deactivate'. En realidad, este comando no tiene efecto fuera del script
  # ya que los cambios en las variables de entorno no persisten al proceso padre.
  # Esto es más una demostración de cómo sería implementarlo.
  unset PYTHONHOME
  unset PYTHONPATH
  echo "Nota: El entorno virtual se 'cierra' solo dentro de este script. Para desactivarlo completamente, usa 'deactivate' manualmente en la shell."
}

# Procesar argumentos
while getopts "oxq" opt; do
  case $opt in
    o)
      list_installed_libraries
      exit 0
      ;;
    x)
      export_installed_libraries
      exit 0
      ;;
    q)
      deactivate_venv
      exit 0
      ;;
    \?)
      echo "Opción inválida: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# Crear entorno virtual si no existe
if [[ ! -d $VENV_NAME ]]; then
  echo "Creando entorno virtual..."
  python3 -m venv $VENV_NAME
else
  echo "El entorno virtual ya existe."
fi

# Activar el entorno virtual
activate_venv
